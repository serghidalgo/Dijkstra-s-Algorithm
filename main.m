//
//  main.m
//  Dijkstra's Algorithm
//
//  Created by Sergio Hidalgo on 6/15/18.
//  Copyright © 2018 Sergio Hidalgo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graph.h"
#import "Dijsktra.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    // Create Undirected Graph
    Graph *g = [[Graph alloc] init];
    [g addEdge:@"1" secondVertex:@"2" withWeight:7];
    [g addEdge:@"2" secondVertex:@"1" withWeight:7];
    [g addEdge:@"1" secondVertex:@"3" withWeight:9];
    [g addEdge:@"3" secondVertex:@"1" withWeight:9];
    [g addEdge:@"1" secondVertex:@"6" withWeight:14];
    [g addEdge:@"6" secondVertex:@"1" withWeight:14];
    [g addEdge:@"2" secondVertex:@"3" withWeight:10];
    [g addEdge:@"3" secondVertex:@"2" withWeight:10];
    [g addEdge:@"2" secondVertex:@"4" withWeight:15];
    [g addEdge:@"4" secondVertex:@"2" withWeight:15];
    [g addEdge:@"3" secondVertex:@"4" withWeight:11];
    [g addEdge:@"4" secondVertex:@"3" withWeight:11];
    [g addEdge:@"3" secondVertex:@"6" withWeight:2];
    [g addEdge:@"6" secondVertex:@"3" withWeight:2];
    [g addEdge:@"4" secondVertex:@"5" withWeight:6];
    [g addEdge:@"5" secondVertex:@"4" withWeight:6];
    [g addEdge:@"5" secondVertex:@"6" withWeight:9];
    [g addEdge:@"6" secondVertex:@"5" withWeight:9];
    
    // View to see if adjacency list was created properly
    //NSLog(@"\n%@", [g neighbors:@"1"]);
    //NSLog(@"\n%@", [g neighbors:@"2"]);
    //NSLog(@"\n%@", [g neighbors:@"3"]);
    //NSLog(@"\n%@", [g neighbors:@"4"]);
    //NSLog(@"\n%@", [g neighbors:@"5"]);
    //NSLog(@"\n%@", [g neighbors:@"6"]);

    // Run Dijkstra on Vertex 1
    NSArray *results = [Dijsktra shortestPaths:g withSource:@"1"];
    NSLog(@"\n%@", results);
    
    return 0;
}

