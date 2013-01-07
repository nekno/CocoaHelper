//
//  UIBarButtonItem+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "UIBarButtonItem+Extended.h"

#pragma mark - Implementation

@implementation UIBarButtonItem (Extended)

#pragma mark - Instance Properties

- (void)setBackButtonBackgroundImageNamed:(NSString *)name forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics {
    UIImage *image = [UIImage imageNamed:name];
    [self setBackButtonBackgroundImage:image forState:state barMetrics:barMetrics];
}

- (void)setBackgroundImageNamed:(NSString *)name forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics {
    UIImage *image = [UIImage imageNamed:name];
    [self setBackgroundImage:image forState:state barMetrics:barMetrics];
}

@end
