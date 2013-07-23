//
//  NSSet+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSSet+Extended.h"

#pragma mark - Implementation

@implementation NSSet (Extended)

#pragma mark - Instance Methods

- (BOOL)containsAllObjectsFromArray:(NSArray *)array; {
    
    for (id object in array) {
        
        if (![self containsObject:object]) {
            return NO;
        }
    }
    
    return YES;
}

- (BOOL)containsOnlyObjectFromArray:(NSArray *)array; {
    
    if ([self count] != [array count]) {
        return NO;
    }
    
    return [self containsAllObjectsFromArray:array];
}

- (BOOL)isEmpty {
	return ([self count] == 0);
}

@end
