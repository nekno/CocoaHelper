//
//  NSData+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSData+Extended.h"

#pragma mark - Implementation

@implementation NSData (Extended)

#pragma mark - Instance Methods

- (BOOL)isEmpty {
	return ([self length] == 0);
}

@end
