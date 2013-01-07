//
//  NSMutableSet+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSMutableSet+Extended.h"
#import "NSNumber+Extended.h"

#pragma mark - Implementation

@implementation NSMutableSet (Extended)

#pragma mark - Instance Methods

- (void)removeObjectsFromArray:(NSArray *)array {
    
    for (id object in array) {
        [self removeObject:object];
    }
}

@end
