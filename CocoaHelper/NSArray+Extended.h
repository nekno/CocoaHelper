//
//  NSArray+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>

#pragma mark - Interface

@interface NSArray (Extended)

- (BOOL)containsObjectsFromArray:(NSArray *)array;
- (BOOL)containsOnlyObjectsFromArray:(NSArray *)array;
- (id)firstObject;
- (BOOL)isEmptyOrNil;

@end
