//
//  UIImageView+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Interface

@interface UIImageView (Extended)

- (id)initWithImageNamed:(NSString *)name;
- (id)initWithImageNamed:(NSString *)imageName highlightedImageNamed:(NSString *)highlightedImageName;

@end
