//
//  NSUserDefaults+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/17/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSUserDefaults+Extended.h"

#pragma mark - Implementation

@implementation NSUserDefaults (Extended)

#pragma mark - Instance Methods

- (id)objectForKeyedSubscript:(NSString *)key {
    return [self objectForKey:key];
}

- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key {
    [self setObject:obj forKey:key];
}

@end
