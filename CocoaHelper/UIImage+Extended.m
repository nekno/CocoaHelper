//
//  UIImage+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIImage+Extended.h"

#pragma mark - Implementation

@implementation UIImage (Extended)

#pragma mark - Class Methods

+ (UIImage *)imageNamed:(NSString *)name withTintColor:(UIColor *)tintColor {
    UIImage *image = [UIImage imageNamed:name];
    
    return [image imageWithTintColor:tintColor];
}

#pragma mark - Instance Methods

- (UIImage *)imageWithTintColor:(UIColor *)tintColor {
    CGRect bounds = CGRectZero;
    bounds.size = self.size;
    
    UIGraphicsBeginImageContextWithOptions(bounds.size, NO, 0.0f);
    
    [tintColor setFill];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRect:bounds];
    [bezierPath fill];
    
    [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0f];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

- (id)initWithLayer:(CALayer *)layer {
    UIGraphicsBeginImageContextWithOptions(layer.frame.size, NO, 0.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [layer renderInContext:context];
    
    self = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return self;
}

- (id)initWithPath:(UIBezierPath *)bezierPath fillColor:(UIColor *)fillColor strokeColor:(UIColor *)strokeColor{
    UIGraphicsBeginImageContextWithOptions(bezierPath.bounds.size, NO, 0.0f);
    
    [fillColor setFill];
    [strokeColor setStroke];
    
    [bezierPath fill];
    [bezierPath stroke];
    
    self = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return self;
}

@end
