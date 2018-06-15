//
//  Dijkstra.m
//  Dijkstra's Algorithm
//
//  Created by Sergio Hidalgo on 6/15/18.
//  Copyright © 2018 Sergio Hidalgo. All rights reserved.
//

#import "Dijsktra.h"

@implementation Dijsktra
+(NSArray *)shortestPaths:(Graph *)graph withSource:(NSString *)vertex{
    // Create vertex set of unvisited locations
    NSMutableSet *Q = [NSMutableSet setWithArray:[graph vertices]];
    
    // Create and initiliaze data structures for storing distances and optimal paths
    // No need to add inifinity or undefined. Lack of presence indicates either
    NSMutableDictionary *dist = [NSMutableDictionary dictionary];
    NSMutableDictionary *prev = [NSMutableDictionary dictionary];
    
    // Set distance from vertex -> vertex as zero
    [dist setObject:[NSNumber numberWithInt:0] forKey:vertex];
    
    // Loop while there are still unvisited locations
    while ([Q count] > 0) {
        // select vertex with smallest distance and then remove from Q
        NSString *currentVertex = nil;
        for(NSString *v in [dist keysSortedByValueUsingSelector:@selector(compare:)]){
            // if the vertex has not been visited, we found the next one to visit
            if([Q containsObject:v]){
                currentVertex = v;
                [Q removeObject:v];
                break;
            }
        }
        
        // Check unvisited neighbors of currentVertex
        for(NSArray *v in [graph neighbors:currentVertex]){
            if([Q containsObject:v[0]]){
                int temp = [[dist objectForKey:currentVertex] intValue]+ [v[1] intValue];
                // if not in dist, then implies infinite value, otherwise compare distances
                if(![dist objectForKey:v[0]] || temp < [[dist objectForKey:v[0]] intValue]){
                    [dist setObject:[NSNumber numberWithInt:temp] forKey:v[0]];
                    [prev setObject:currentVertex forKey:v[0]];
                }
            }
        }
    }
    
    return @[dist, prev];
}
@end
