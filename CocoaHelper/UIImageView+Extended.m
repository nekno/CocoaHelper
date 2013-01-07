//
//  UIImageView+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#pragma mark - Implementation

#import "UIImageView+Extended.h"
#import "UIImage+Extended.h"

@implementation UIImageView (Extended)

#pragma mark - Instance Methods

- (id)initWithImageNamed:(NSString *)name {
    self = [super init];
    
    if (self != nil) {
        self.image = [UIImage imageNamed:name];
    }
    
    return self;
}

- (id)initWithImageNamed:(NSString *)imageName highlightedImageNamed:(NSString *)highlightedImageName {
    self = [super init];
    
    if (self != nil) {
        self.image = [UIImage imageNamed:imageName];
        self.highlightedImage = [UIImage imageNamed:highlightedImageName];
    }
    
    return self;
}

@end
