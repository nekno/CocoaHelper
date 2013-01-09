//
//  UIScreen+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "UIScreen+Extended.h"

#pragma mark - Implementation

@implementation UIScreen (Extended)

#pragma mark - Instance Properties

@dynamic currentSize;

- (CGSize)currentSize {
    UIDevice *device = [UIDevice currentDevice];
    UIScreen *screen = [UIScreen mainScreen];
    
    if (UIInterfaceOrientationIsLandscape(device.orientation)) {
        CGSize size = CGSizeZero;
        size.height = screen.bounds.size.width;
        size.width = screen.bounds.size.height;
        
        return size;
    }
    else {
        return screen.bounds.size;
    }
}

@end
