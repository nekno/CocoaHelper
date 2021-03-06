//
//  NSString+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSString+Extended.h"

#pragma mark - Implementation

@implementation NSString (Extended)

#pragma mark - Instance Methods

- (BOOL)containsString:(NSString *)string {
    return [self containsString:string options:NSLiteralSearch];
}

- (BOOL)containsString:(NSString *)string options:(NSStringCompareOptions) options {
    NSRange range = [self rangeOfString:string options:options];
    
    return (range.location != NSNotFound);
}

- (BOOL)isEmpty {
	return ([self length] == 0);
}

@end
