//
//  UIView+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "UIView+Extended.h"

#pragma mark - Implementation

@implementation UIView (Extended)

#pragma mark - Instance Methods

- (id)initWithNib:(UINib *)nib {
    Class class = [self class];
    NSArray *topLevelObjects = [nib instantiateWithOwner:nil options:nil];
    
    self = nil;
    
    for (id object in topLevelObjects) {
        
        if ([object class] == class) {
            self = object;
            
            break;
        }
    }
    
    return self;
}

- (id)initWithNibName:(NSString *)name {
    UINib *nib = [UINib nibWithNibName:name bundle:nil];
    self = [self initWithNib:nib];
    
    return self;
}

- (void)removeAllSubviews {
    
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

@end
