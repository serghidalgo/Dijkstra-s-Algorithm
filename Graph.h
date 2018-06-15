//
//  Graph.h
//  Dijkstra's Algorithm
//
//  Created by Sergio Hidalgo on 6/15/18.
//  Copyright © 2018 Sergio Hidalgo. All rights reserved.
//

#ifndef Graph_h
#define Graph_h


#endif /* Graph_h */

#import <Foundation/Foundation.h>

@interface Graph:NSObject{
    NSMutableDictionary *adjacencyList;
}

- (BOOL)adjacent: (NSString*)v1 secondVertex:(NSString*)v2;
- (NSArray*)neighbors:(NSString*)vertex;
- (void)addVertex:(NSString*)v;
- (void)addEdge:(NSString*)v1 secondVertex:(NSString*)v2 withWeight:(int)w;
- (int)getEdgeValue:(NSString*)v1 secondVertex:(NSString*)v2;
- (NSArray*)vertices;
@end
