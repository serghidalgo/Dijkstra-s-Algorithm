//
//  Dijsktra.h
//  Dijkstra's Algorithm
//
//  Created by Sergio Hidalgo on 6/15/18.
//  Copyright © 2018 Sergio Hidalgo. All rights reserved.
//

#ifndef Dijsktra_h
#define Dijsktra_h


#endif /* Dijsktra_h */

#import <Foundation/Foundation.h>
#import "Graph.h"

@interface Dijsktra:NSObject
+ (NSArray*)shortestPaths:(Graph *)graph withSource:(NSString*)vertex;
@end
