//
//  NSNumber+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSNumber+Extended.h"

#pragma mark - Implementation

@implementation NSNumber (Extended)

#pragma mark - Instance Methods

- (CGFloat)cgFloatValue {
    
#if CGFLOAT_IS_DOUBLE
    return [self doubleValue];
#else
    return [self floatValue];
#endif
}

- (id)initWithCGFloat:(CGFloat)aCGFloat {
    
#if CGFLOAT_IS_DOUBLE
    return [self initWithDouble:aCGFloat];
#else
    return [self initWithFloat:aCGFloat];
#endif
}

@end
