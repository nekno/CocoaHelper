//
//  NSCache+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/17/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSCache+Extended.h"

#pragma mark - Implementation

@implementation NSCache (Extended)

#pragma mark - Instance Methods

- (id)objectForKeyedSubscript:(id)key {
    return [self objectForKey:key];
}

- (void)setObject:(id)obj forKeyedSubscript:(id)key {
    [self setObject:obj forKey:key];
}

@end
