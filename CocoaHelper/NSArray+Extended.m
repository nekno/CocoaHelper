//
//  NSArray+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSArray+Extended.h"
#import "NSNumber+Extended.h"

#pragma mark - Implementation

@implementation NSArray (Extended)

#pragma mark - Instance Methods

- (BOOL)containsObjectsFromArray:(NSArray *)array {
    
    for (id object in array) {
        
        if (![self containsObject:object]) {
            return NO;
        }
    }
    
    return YES;
}

- (BOOL)containsOnlyObjectsFromArray:(NSArray *)array {
    
    if ([self count] != [array count]) {
        return NO;
    }
    
    return [self containsObjectsFromArray:array];
}

- (id)firstObject {
    
    if ([self count] != 0) {
        return self[0];
    }
    
    return nil;
}

- (BOOL)isEmptyOrNil {
	return (self == nil || [self count] == 0);
}

@end
