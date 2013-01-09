//
//  UIBarButtonItem+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Interface

@interface UIBarButtonItem (Extended)

- (void)setBackButtonBackgroundImageNamed:(NSString *)name forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
- (void)setBackgroundImageNamed:(NSString *)name forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;

@end
