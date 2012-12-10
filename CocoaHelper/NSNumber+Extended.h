//
//  NSNumber+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>

#pragma mark - Interface

@interface NSNumber (Extended)

- (CGFloat)cgFloatValue;
- (id)initWithCGFloat:(CGFloat)aCGFloat;

@end
