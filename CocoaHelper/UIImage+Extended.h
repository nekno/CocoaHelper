//
//  UIImage+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

#pragma mark - Interface

@interface UIImage (Extended)

+ (UIImage *)imageNamed:(NSString *)name withTintColor:(UIColor *)tintColor;

- (UIImage *)imageWithTintColor:(UIColor *)tintColor;
- (id)initWithLayer:(CALayer *)layer;
- (id)initWithPath:(UIBezierPath *)bezierPath fillColor:(UIColor *)fillColor strokeColor:(UIColor *)strokeColor;

@end
