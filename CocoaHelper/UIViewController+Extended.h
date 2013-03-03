//
//  UIViewController+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 1/24/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Interface

@interface UIViewController (Extended)

- (id)initWithStoryboardName:(NSString *)name identifier:(NSString *)identifierOrNil bundle:(NSBundle *)storyboardBundleOrNil;

@end
