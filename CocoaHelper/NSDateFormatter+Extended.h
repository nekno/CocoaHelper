//
//  NSDateFormatter+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Interface

@interface NSDateFormatter (Extended)

- (NSString *)relativeDateAndTimeStringFromDate:(NSDate *)date;
- (NSString *)relativeDateOnlyStringFromDate:(NSDate *)date;

@end
