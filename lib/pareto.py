from collections import namedtuple
import heapq
import random

class ParetoSpace1D:
    def __init__( self, lt ):
        self.best  = list()
        self.bykey = dict()
        self.count = 0
        self.lt    = lt

    def dominates( self, a, b ):
        # fitness values are 1-tuples, so we first extract the values
        return self.lt( b[ 0 ], a[ 0 ] )

    def _extent( self, value ):
        if hasattr( value, "bbox" ):
            return value.bbox()[ 1 ]
        else:
            return value

    def add( self, key, value ):
        if key in self.bykey:
            self.bykey[ key ][ -1 ] = None

        # Use negative priority since we are using min-heaps. Also, use the
        # upper edge of the interval instead of the interval itself. The heap
        # algorithm assumes that (a < b) implies (not b < a), which is not true
        # for intervals.

        priority = - self._extent( value[ 0 ] )
        self.count += 1
        heap_entry = [ priority, self.count, key, value ]
        self.bykey[ key ] = heap_entry
        heapq.heappush( self.best, heap_entry )

    def remove( self, key ):
        self.bykey[ key ][ -1 ] = None

    def getFrontier( self ):
        while len( self.best ) > 0 and self.best[ 0 ][ -1 ] is None:
            heapq.heappop( self.best )
        if len( self.best ) > 0:
            return [ self.best[ 0 ][ -2: ] ]
        return None

class ParetoSpaceND:
    Point = namedtuple( "Point", "key coords parent children" )

    def __init__( self, lt ):
        self.root = ParetoSpaceND.Point( None, None, [ None ], list() )
        self.points = dict()
        self.lt = lt

    def dominates( self, a, b ):
        better = False
        for x, y in zip( a, b ):
            if self.lt( x, y ):
                return False
            elif not better and self.lt( y, x ):
                better = True
        return better

    def _insert( self, worklist ):
        while len( worklist ) > 0:
            parent, _, p = worklist.pop()
            is_dominant = False
            collected = list()
            for i, q in enumerate( parent.children ):
                if not is_dominant and self.dominates( q.coords, p.coords ):
                    p.parent[ 0 ] = q
                    q.children.append( p )
                    #random.shuffle( parent.children )
                    #worklist.append( ( q, 0, p ) )
                    break
                elif self.dominates( p.coords, q.coords ):
                    collected.append( i )
                    q.parent[ 0 ] = p
                    p.children.append( q )
                    is_dominant = True
            else:
                for i in reversed( collected ):
                    del parent.children[ i ]
                p.parent[ 0 ] = parent
                parent.children.append( p )
                random.shuffle( parent.children )

    def add( self, key, coords ):
        p = ParetoSpaceND.Point( key, coords, [ None ], list() )
        self.points[ key ] = p
        self._insert( [ ( self.root, 0, p ) ] )

    def remove( self, key ):
        p = self.points[ key ]
        del self.points[ key ]
        parent = p.parent[ 0 ]
        i = [ i for i, q in enumerate( parent.children ) if p.key == q.key ][ 0 ]
        del parent.children[ i ]

        self._insert( [ ( parent, i, q ) for q in p.children ] )

    def getFrontier( self ):
        return [ ( p.key, p.coords ) for p in self.root.children ]

class ParetoSpace:
    def __init__( self, lt ):
        self.delegate = None
        self.lt = lt

    def dominates( self, a, b ):
        if self.delegate is not None:
            return self.delegate.dominates( a, b )

    def add( self, key, value ):
        if self.delegate is None:
            if len( value ) == 1:
                self.delegate = ParetoSpace1D( self.lt )
            else:
                self.delegate = ParetoSpaceND( self.lt )
        self.delegate.add( key, value )

    def remove( self, key ):
        if self.delegate is not None:
            self.delegate.remove( key )

    def getFrontier( self ):
        if self.delegate is not None:
            return self.delegate.getFrontier()
        return list()

