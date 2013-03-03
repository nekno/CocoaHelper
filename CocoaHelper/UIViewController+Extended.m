//
//  UIViewController+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 1/24/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "UIViewController+Extended.h"

#pragma mark - Implementation

@implementation UIViewController (Extended)

#pragma mark - Instance Methods

- (id)initWithStoryboardName:(NSString *)name identifier:(NSString *)identifierOrNil bundle:(NSBundle *)storyboardBundleOrNil {
    self = [super init];
    
    if (self) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:storyboardBundleOrNil];
        
        if (identifierOrNil == nil) {
            self = [storyboard instantiateInitialViewController];
        }
        else {
            self = [storyboard instantiateViewControllerWithIdentifier:identifierOrNil];
        }
    }
    
    return self;
}

@end
