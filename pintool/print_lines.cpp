#include "pin.H"
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <map>
#include <set>
#include <vector>

KNOB< std::string > line_fname(
    KNOB_MODE_OVERWRITE, "pintool", "file", "lines.out",
    "write function line numbers to the named file"
);
KNOB< std::string > allowed_fnames(
    KNOB_MODE_APPEND, "pintool", "allow", "",
    "trace functions from the named file (may be used more than once)"
);

typedef UINT32 line_t;

static set< string > allowed;
static map< string, UINT64 * > rtn_counts;
static map< string, map< string, set< UINT32 > > > rtn_lines;

static ofstream linefile;

static
VOID
docount( UINT64 * counter )
{
    *counter += 1;
}

static
VOID
instRTN( RTN rtn, VOID * v )
{
    string name;
    INT32 col, line;

    ADDRINT addr = RTN_Address( rtn );
    PIN_GetSourceLocation( addr, &col, &line, &name );
    if ( name.size() == 0 )
        return;

    name = RTN_Name( rtn );
    UINT64 *& pi = rtn_counts[ name ];
    if ( ! pi )
        pi = new UINT64;

    map< string, set< UINT32 > > & lines = rtn_lines[ name ];

    RTN_Open( rtn );
    for ( INS ins = RTN_InsHead( rtn ); INS_Valid( ins ); ins = INS_Next( ins ) ) {
        PIN_GetSourceLocation( INS_Address( ins ), &col, &line, &name );
        string short_name = name;
        if ( name.rfind( '/' ) != string::npos )
            short_name = name.substr( name.rfind( '/' ) + 1 );
        if ( !allowed.empty() && allowed.find( short_name ) == allowed.end() )
            continue;
        if ( name.size() != 0 && line != 0 )
            lines[ name ].insert( line );
    }

    RTN_InsertCall(
        rtn, IPOINT_BEFORE, (AFUNPTR) docount,
        IARG_ADDRINT, pi,
        IARG_END
    );
    RTN_Close( rtn );
}

static
VOID
writeCounts( INT32 code, VOID * v )
{
    bool file_is_open = false;

    for ( map< string, UINT64 * >::iterator it = rtn_counts.begin(); it != rtn_counts.end(); ++it ) {
        map< string, set< UINT32 > > & lines = rtn_lines[ it->first ];
        if ( *(it->second) == 0 )
            continue;
        if ( ! file_is_open ) {
            linefile.open( line_fname.Value().c_str() );
            file_is_open = true;
        }
        linefile << "method: " << it->first << " (" << *(it->second) << ")\n";
        for ( map< string, set< UINT32 > >::iterator jt = lines.begin(); jt != lines.end(); ++jt ) {
            linefile << "file: " << jt->first << '\n';
            linefile << "lines:";
            for ( set< UINT32 >::iterator kt = jt->second.begin(); kt != jt->second.end(); ++kt )
                linefile << ' ' << *kt;
            linefile << '\n';
        }
    }

    if ( file_is_open ) {
        linefile.flush();
        linefile.close();
    }
}

int
main( int argc, char ** argv )
{
    PIN_InitSymbols();

    if ( PIN_Init( argc, argv ) ) {
        std::cerr << KNOB_BASE::StringKnobSummary() << '\n';
        return -1;
    }

    for ( UINT32 i = 0; i < allowed_fnames.NumberOfValues(); ++i )
        allowed.insert( allowed_fnames.Value( i ) );

    RTN_AddInstrumentFunction( instRTN, 0 );
    PIN_AddFiniFunction( writeCounts, 0 );

    PIN_StartProgram();

    return 0;
}
