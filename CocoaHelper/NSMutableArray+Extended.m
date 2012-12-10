//
//  NSMutableArray+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSMutableArray+Extended.h"
#import "NSNumber+Extended.h"

#pragma mark - Implementation

@implementation NSMutableArray (Extended)

#pragma mark - Instance Methods

- (void)removeFristObject {
    [self removeObjectAtIndex:0];
}

@end
