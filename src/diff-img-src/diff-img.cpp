#include "config.h"

#include <algorithm>
#include <cmath>
#include <cstdarg>
#include <cstdio>
#include <cstdlib>
#include <exception>
#include <iostream>
#include <memory>
#include <sstream>
#include <string>
#include <utility>
#include <vector>

#include <dirent.h>
#include <sys/stat.h>

#include "CImg.h"
using namespace cimg_library;

enum diff_t { L1, L2, NMSE };

struct options {
    std::vector< std::string > fnames;
    diff_t alg;
    float thresh;
    bool recursive;
    bool visualize;

    options()
        : fnames(), alg( L2 ), thresh( 0.0f ), recursive( false ),
          visualize( false )
    {}
};

struct diff_stats {
    float total;
    float average;
    float maximum;
};

class image_mismatch : public std::exception {};

void
usage( const char * prog, const char * format = NULL, ... )
{
    if ( format != NULL ) {
        va_list args;
        fprintf( stderr, "ERROR: " );
        vfprintf( stderr, format, args );
        fprintf( stderr, "\n" );
    }
    std::cerr << "Usage: " << prog << " [options] file1 file2\n";
    std::cerr << "\n";
    std::cerr << "   --l1       compute L1 distance between images\n";
    std::cerr << "   --l2       compute L2 distance between images\n";
    std::cerr << "   --nmse     compute normalized mean square error\n"; 
    std::cerr << "   -r         recursively compare images in subdirectories\n";
    std::cerr << "   --thresh x non-zero status if total error over threshold\n";
#if cimg_display != 0
    std::cerr << "   -v         display the diff in a window\n";
#endif
    exit( format == NULL ? 0 : 1 );
}

options
parse_args( int argc, char ** argv )
{
    const char * prog = argv[ 0 ];
    options opt;

    for ( ++argv, --argc; argc > 0; ++argv, --argc ) {
        const std::string & arg = *argv;
        if ( arg == "--help" || arg == "-h" )
            usage( prog );
        else if ( arg == "--l1" )
            opt.alg = L1;
        else if ( arg == "--l2" )
            opt.alg = L2;
        else if ( arg == "--nmse" )
            opt.alg = NMSE;
        else if ( arg == "-r" )
            opt.recursive = true;
        else if ( arg == "--thresh" ) {
            std::stringstream val( *( ++argv ) );
            val >> opt.thresh;
#if cimg_display != 0
        } else if ( arg == "-v" ) {
            opt.visualize = true;
#endif
        } else if ( ( arg == "-" || arg[ 0 ] != '-' ) && opt.fnames.size() < 2 )
            opt.fnames.push_back( arg );
        else
            usage( prog, "unrecognized argument: %s", arg.c_str() );
    }
    if ( opt.fnames.size() < 2 )
        usage( prog );
    if ( opt.recursive && opt.visualize ) {
        std::cerr << "ERROR: cannot visualize recursive diff\n";
        exit( 1 );
    }
    return opt;
}

std::vector< std::string >
read_dir( const std::string & filename )
{
    std::vector< std::string > entries;

    DIR * dp = opendir( filename.c_str() );
    if ( ! dp ) {
        perror( "could not open directory" );
        std::cerr << filename << '\n';
        return entries;
    }

    dirent * ep;
    while ( ( ep = readdir( dp ) ) )
        entries.push_back( ep->d_name );

    closedir( dp );
    return entries;
}

std::vector< std::string >
get_files( const std::string & root )
{
    struct stat path_stat;

    std::vector< std::string > files;
    std::vector< std::string > pending;
    pending.push_back( root );
    while ( ! pending.empty() ) {
        std::string dname = pending.back();
        pending.pop_back();
        std::vector< std::string > entries = read_dir( dname );
        for ( size_t i = 0; i < entries.size(); ++i ) {
            if ( entries[ i ] == "." || entries[ i ] == ".." )
                continue;
            entries[ i ] = dname + "/" + entries[ i ];
            lstat( entries[ i ].c_str(), &path_stat );
            if ( S_ISDIR( path_stat.st_mode ) )
                pending.push_back( entries[ i ] );
            else
                files.push_back( entries[ i ] );
        }
    }
    return files;
}

class DiffStrategy {
public:
    virtual ~DiffStrategy() {}

    virtual CImg< float >
    diff( const CImg< float > & i1, const CImg< float > & i2 ) = 0;
};

class L1DiffStrategy : public DiffStrategy {
public:
    static DiffStrategy * instance() {
        static L1DiffStrategy d;
        return &d;
    }

    virtual CImg< float > diff (
        const CImg< float > & i1, const CImg< float > & i2
    ) {
        CImg< float > result( i1.width(), i1.height() );
        size_t nchan = i1.spectrum();

        float scale = 1.0f / 3.0f;
        for ( size_t y = 0; y < result.height(); ++y ) {
            for ( size_t x = 0; x < result.width(); ++x ) {
                float sum = 0.0f;
                for ( size_t c = 0; c < nchan; ++c )
                    sum += i1( x, y, 0, c ) - i2( x, y, 0, c );
                result( x, y, 0 ) = sum * scale;
            }
        }
        return result;
    }

protected:
    L1DiffStrategy() {}
    L1DiffStrategy( const L1DiffStrategy & ) {}
    L1DiffStrategy & operator=( const L1DiffStrategy & that ) {
        DiffStrategy::operator=( that );
        return *this;
    }
};

class L2DiffStrategy : public DiffStrategy {
public:
    static DiffStrategy * instance() {
        static L2DiffStrategy d;
        return &d;
    }

    virtual CImg< float > diff(
        const CImg< float > & i1, const CImg< float > & i2
    ) {
        CImg< float > result( i1.width(), i1.height() );
        size_t nchan = i1.spectrum();

        float scale = 1.0f / std::sqrt( 3.0f );
        for ( size_t y = 0; y < result.height(); ++y ) {
            for ( size_t x = 0; x < result.width(); ++ x ) {
                float sum = 0.0f;
                for ( size_t c = 0; c < nchan; ++c ) {
                    float delta = i1( x, y, 0, c ) - i2( x, y, 0, c );
                    sum += delta * delta;
                }
                result( x, y, 0 ) = std::sqrt( sum ) * scale;
            }
        }
        return result;
    }

protected:
    L2DiffStrategy() {}
    L2DiffStrategy( const L2DiffStrategy & ) {}
    L2DiffStrategy & operator=( const L2DiffStrategy & that ) {
        DiffStrategy::operator=( that );
        return *this;
    }
};

class NormalizedSqError : public DiffStrategy {
public:
    static DiffStrategy * instance() {
        static NormalizedSqError d;
        return &d;
    }

    virtual CImg< float > diff(
        const CImg< float > & i1, const CImg< float > & i2
    ) {
        float range = i2.max() - i2.min();
        return ( i1.get_channel( 0 ) - i2.get_channel( 0 ) ).sqr() / ( range * range );
    }

protected:
    NormalizedSqError() {}
    NormalizedSqError( const NormalizedSqError & ) {}
    NormalizedSqError & operator=( const NormalizedSqError & that ) {
        DiffStrategy::operator=( that );
        return *this;
    }
};

CImg< float > *
load_image( const std::string & fname )
{
    CImg< float > * img = NULL;
    try {
        img = new CImg< float >( fname.c_str() );
    } catch ( CImgIOException & e ) {
        return NULL;
    }
    if ( img->spectrum() == 4 )
        img->channels( 0, 2 );
    return img;
}

diff_stats
compare(
    DiffStrategy * diff, const std::string & f1, const std::string & f2,
    bool visualize = false
) {
    std::auto_ptr< CImg< float > > img1( load_image( f1 ) );
    std::auto_ptr< CImg< float > > img2( load_image( f2 ) );
    if ( ! img1.get() )
        std::cerr << f1 << " is not an image file\n";
    if ( ! img2.get() )
        std::cerr << f2 << " is not an image file\n";
    if ( ! img1.get() || ! img2.get() )
        throw image_mismatch();

    if ( img1->width() != img2->width() || img1->height() != img2->height() ) {
        std::cerr << f1 << " (" << img1->width() << 'x' << img1->height()
                  << ") and " << f2 << " (" << img2->width() << 'x'
                  << img2->height() << ") are different sizes\n";
        throw image_mismatch(); 
    }
    img1->RGBtoLab();
    img2->RGBtoLab();
    CImg< float > err = diff->diff( *img1, *img2 ) / 255.0f;
    diff_stats ds = { err.sum(), err.mean(), err.max() };

    if ( visualize ) {
        img1->LabtoRGB();
        img2->LabtoRGB();
        std::string title = f1 + " vs " + f2;
        CImgList< float > imgs( 3 );
        imgs( 0 ).assign( *img1, true );
        // [instance(720,480,1,3,0x102754000,non-shared)] CImg<float>::map(): Instance and specified colormap (1,256,1,3,0x7fd1e8d04f20) have incompatible dimensions
        imgs( 1 ).assign( ( CImg< unsigned char >( err*255.0f ) ).get_map( CImg< unsigned char >::hot_LUT256() ) );
        //imgs( 1 ).assign( ( *img1 - *img2 ).get_abs() );
        imgs( 2 ).assign( *img2, true );
        CImgDisplay win(
            img1->width() + err.width() + img2->width(),
            std::max( std::max( img1->height(), img2->height() ), err.height() ),
            title.c_str()
        );
        win.display( imgs );
        win.show();
        while ( ! win.is_closed() )
            win.wait();
    }

    return ds;
}

std::string
relpath( const std::string & wd, const std::string & fname )
{
    if ( fname.find( wd ) == 0 ) {
        for ( size_t i = wd.size(); i < fname.size(); ++i )
            if ( fname[ i ] != '/' )
                return fname.substr( i );
    }
    return fname;
}

int
main( int argc, char ** argv )
{
    options opt = parse_args( argc, argv );

    DiffStrategy * diff;
    switch ( opt.alg ) {
        case L1:
            diff = L1DiffStrategy::instance();
            break;
        case L2:
            diff = L2DiffStrategy::instance();
            break;
        case NMSE:
            diff = NormalizedSqError::instance();
            break;
    }

    int status = 0;
    CImg< float > * img1 = NULL;
    CImg< float > * img2 = NULL;

    if ( opt.recursive ) {
        std::vector< std::string > files1 = get_files( opt.fnames[ 0 ] );
        std::vector< std::string > files2 = get_files( opt.fnames[ 1 ] );
        std::sort( files1.begin(), files1.end() );
        std::sort( files2.begin(), files2.end() );

        size_t i, j;
        for ( i = 0, j = 0; i < files1.size() && j < files2.size(); ) {
            std::string f1 = relpath( opt.fnames[ 0 ], files1[ i ] );
            std::string f2 = relpath( opt.fnames[ 1 ], files2[ j ] );
            if ( f1 == f2 ) {
                try {
                    diff_stats ds = compare( diff, files1[ i ], files2[ j ] );
                    if ( ds.total > opt.thresh ) {
                        std::cout << files1[ i ] << " and "
                                  << files2[ j ] << " differ\n";
                        status = 1;
                    }
                    std::cout << "total error: " << ds.total << '\n';
                    std::cout << "avg error:   " << ds.average << '\n';
                    std::cout << "max error:   " << ds.maximum << '\n';
                } catch ( image_mismatch & e ) {
                    status = 1;
                }
                i += 1;
                j += 1;
            } else if ( f1.compare( f2 ) < 0 ) {
                std::cout << "only in " << opt.fnames[ 0 ] << ": " << f1 << '\n';
                i += 1;
            } else {
                std::cout << "only in " << opt.fnames[ 1 ] << ": " << f2 << '\n';
                j += 1;
            }
        }
        for ( ; i < files1.size(); ++i )
            std::cout << "only in " << opt.fnames[ 0 ] << ": "
                      << relpath( opt.fnames[ 0 ], files1[ i ] ) << '\n';
        for ( ; j < files2.size(); ++j )
            std::cout << "only in " << opt.fnames[ 1 ] << ": "
                      << relpath( opt.fnames[ 1 ], files2[ j ] ) << '\n';
    } else {
        try {
            diff_stats ds = compare( diff, opt.fnames[ 0 ], opt.fnames[ 1 ], opt.visualize );
            std::cout << "total error: " << ds.total << '\n';
            std::cout << "avg error:   " << ds.average << '\n';
            std::cout << "max error:   " << ds.maximum << '\n';
        } catch ( image_mismatch & e ) {
            status = 1;
        }
    }

    return status;
}

