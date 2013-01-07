//
//  UIButton+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Interface

@interface UIButton (Extended)

- (void)setBackgroundImageNamed:(NSString *)name forState:(UIControlState)state;
- (void)setImageNamed:(NSString *)name forState:(UIControlState)state;

@end
