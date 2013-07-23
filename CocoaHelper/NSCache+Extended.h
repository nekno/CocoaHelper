//
//  NSCache+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/17/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#pragma mark - Interface

#import <Foundation/Foundation.h>

@interface NSCache (Extended)

- (id)objectForKeyedSubscript:(id)key;
- (void)setObject:(id)obj forKeyedSubscript:(id)key;

@end
