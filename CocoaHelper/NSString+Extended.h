//
//  NSString+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Interface

@interface NSString (Extended)

- (BOOL)containsString:(NSString *)string;
- (BOOL)containsString:(NSString *)string options:(NSStringCompareOptions)options;
- (BOOL)isEmptyOrNil;

@end
