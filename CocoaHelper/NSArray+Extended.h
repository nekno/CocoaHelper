//
//  NSArray+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>

#pragma mark - Interface

@interface NSArray (Extended)

- (NSArray *)arrayByRemovingObject:(id)object;
- (id)firstObject;
- (BOOL)isEmptyOrNil;

@end
