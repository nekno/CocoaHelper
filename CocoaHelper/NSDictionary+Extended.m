//
//  NSDictionary+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSDictionary+Extended.h"
#import "NSNumber+Extended.h"

#pragma mark - Implementation

@implementation NSDictionary (Extended)

#pragma mark - Instance Methods

- (BOOL)containsKey:(id)key {
    return (self[key] != nil);
}

- (BOOL)containsObject:(id)object {
    return ([self allKeysForObject:object] != nil);
}

- (BOOL)isEmptyOrNil {
	return (self == nil || [self count] == 0);
}

@end
