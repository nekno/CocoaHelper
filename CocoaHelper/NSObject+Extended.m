//
//  NSObject+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSObject+Extended.h"

#pragma mark - Implementation

@implementation NSObject (Extended)

#pragma mark - Instance Methods

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay {
    dispatch_time_t when = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC);
    dispatch_queue_t queue = dispatch_get_main_queue();
    dispatch_after(when, queue, block);
}

@end
