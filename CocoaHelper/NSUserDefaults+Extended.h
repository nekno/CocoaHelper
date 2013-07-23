//
//  NSUserDefaults+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/17/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#pragma mark - Interface

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Extended)

- (id)objectForKeyedSubscript:(NSString *)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key;

@end
