//
//  UINavigationBar+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "UINavigationBar+Extended.h"

#pragma mark - Implementation

@implementation UINavigationBar (Extended)

#pragma mark - Instance Properties

- (void)setBackgroundImageNamed:(NSString *)name forBarMetrics:(UIBarMetrics)barMetrics {
    UIImage *image = [UIImage imageNamed:name];
    [self setBackgroundImage:image forBarMetrics:barMetrics];
}

@end
