//
//  UIScrollView+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "UIScrollView+Extended.h"

#pragma mark - Implementation

@implementation UIScrollView (Extended)

#pragma mark - Instance Properties

@dynamic visibleRect;

- (CGRect)visibleRect {
    CGRect rect = CGRectZero;
    rect.origin = self.contentOffset;
    rect.size = self.frame.size;
    
    return rect;
}

@end
