//
//  UIView+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Interface

@interface UIView (Extended)

- (id)initWithNib:(UINib *)nib;
- (id)initWithNibName:(NSString *)name;
- (void)removeAllSubviews;

@end
