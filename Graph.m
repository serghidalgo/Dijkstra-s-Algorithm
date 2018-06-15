//
//  Graph.m
//  Dijkstra's Algorithm
//
//  Created by Sergio Hidalgo on 6/15/18.
//  Copyright © 2018 Sergio Hidalgo. All rights reserved.
//

#import "Graph.h"

@implementation Graph
-(id)init {
    self = [super init];
    adjacencyList = [NSMutableDictionary dictionary];
    return self;
}
- (void)addVertex:(NSString*)v{
    // Only add vertex if not already there
    if(![adjacencyList objectForKey:v]){
        [adjacencyList setObject:[[NSMutableSet alloc ] init] forKey:v];
    }
}
- (void)addEdge:(NSString*)v1 secondVertex:(NSString*)v2 withWeight:(int)w{
    // Add v1 if not already in the adjacency list
    [self addVertex:v1];
    // Create tuple storing second vertex and weight of the edge
    NSArray *tuple = @[v2, [NSNumber numberWithInt:w]];
    // Add tuple to the adjacency list
    [[adjacencyList objectForKey:v1] addObject:tuple];
}
- (BOOL)adjacent:(NSString*)v1 secondVertex:(NSString*)v2 {
    // get the neighbors and iterate to see if v2 is contained in the set
    NSMutableSet *neighbors = [adjacencyList objectForKey:v1];
    if(neighbors)
        for(NSArray *vertex in neighbors)
            if([vertex[0] isEqualToString:v2])
                return YES;
    return NO;
}
- (NSArray*)neighbors:(NSString*)vertex{
    // return the list of tuples with weights
    return [adjacencyList objectForKey:vertex];
}

- (int)getEdgeValue:(NSString*)v1 secondVertex:(NSString*)v2{
    // get the neighbors and iterate to see if v2 is contained in the set
    NSMutableSet *neighbors = [adjacencyList objectForKey:v1];
    if(neighbors)
        for(NSArray *vertex in neighbors)
            if([vertex[0] isEqualToString:v2])
                return [vertex[1] intValue];
    // Dijkstra's algorithm does not work with negative weights
    // so this would be useful for indicating if something got corrupted
    // or if incorrect input were given.
    return -1;
}

- (NSArray*)vertices{
    return [adjacencyList allKeys];
}

@end
