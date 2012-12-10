//
//  NSObject+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Interface

@interface NSObject (Extended)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
