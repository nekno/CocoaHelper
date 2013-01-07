//
//  NSSet+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSSet+Extended.h"

#pragma mark - Implementation

@implementation NSSet (Extended)

#pragma mark - Instance Methods

- (BOOL)isEmptyOrNil {
	return (self == nil || [self count] == 0);
}

@end
