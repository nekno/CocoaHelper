//
//  UIButton+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "UIButton+Extended.h"
#import "UIImage+Extended.h"

#pragma mark - Interface

@implementation UIButton (Extended)

#pragma mark - Instance Methods

- (void)setBackgroundImageNamed:(NSString *)name forState:(UIControlState)state {
    UIImage *image = [UIImage imageNamed:name];
    [self setImage:image forState:state];
}

- (void)setImageNamed:(NSString *)name forState:(UIControlState)state {
    UIImage *image = [UIImage imageNamed:name];
    [self setImage:image forState:state];
}

@end
