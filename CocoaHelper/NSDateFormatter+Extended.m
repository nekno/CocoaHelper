//
//  NSDateFormatter+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSDate+Extended.h"
#import "NSDateFormatter+Extended.h"

#pragma mark - Interface

@interface NSDateFormatter (Private)

+ (NSDateFormatter *)sharedDateAndTimeDateFormatter;
+ (NSDateFormatter *)sharedDateOnlyDateFormatter;
+ (NSDateFormatter *)sharedTomorrowAndTimeDateFormatter;
+ (NSDateFormatter *)sharedWeekdayAndTimeDateFormatter;
+ (NSDateFormatter *)sharedWeekdayOnlyDateFormatter;
+ (NSDateFormatter *)sharedYesterdayAndTimeDateFormatter;

@end

#pragma mark - Implementation

@implementation NSDateFormatter (Extended)

#pragma mark - Instance Methods

+ (NSString *)relativeDateAndTimeStringFromDate:(NSDate *)date {
    NSDate *day = [date beginningOfDay];
    
    if ([day isEqualToToday]) {
        NSTimeInterval interval = round([date timeIntervalSinceNow]);
        
        if (interval * -1 >= TimeIntervalOfOneHour) {
            NSInteger hours = floor(interval * -1 / TimeIntervalOfOneHour);
            
            if (hours == 1) {
                return @"1 hour ago";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d hours ago", hours];
            }
        }
        else if (interval * -1 >= TimeIntervalOfOneMinute) {
            NSInteger minutes = floor(interval * -1 / TimeIntervalOfOneMinute);
            
            if (minutes == 1) {
                return @"1 minute ago";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d minutes ago", minutes];
            }
        }
        else if (interval * -1 >= TimeIntervalOfOneSecond) {
            NSInteger seconds = floor(interval * -1 / TimeIntervalOfOneSecond);
            
            if (seconds == 1) {
                return @"1 second ago";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d seconds ago", seconds];
            }
        }
        else if (interval < TimeIntervalOfOneSecond) {
            return @"just now";
        }
        else if (interval < TimeIntervalOfOneMinute) {
            NSInteger seconds = floor(interval / TimeIntervalOfOneSecond);
            
            if (seconds == 1) {
                return @"1 second from now";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d seconds from now", seconds];
            }
        }
        else if (interval < TimeIntervalOfOneHour) {
            NSInteger minutes = floor(interval / TimeIntervalOfOneMinute);
            
            if (minutes == 1) {
                return @"1 minute from now";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d minutes from now", minutes];
            }
        }
        else {
            NSInteger hours = floor(interval / TimeIntervalOfOneHour);
            
            if (hours == 1) {
                return @"1 hour from now";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d hours from now", hours];
            }
        }
    }
    else if ([day isEqualToYesterday]) {
        NSDateFormatter *formatter = [NSDateFormatter sharedYesterdayAndTimeDateFormatter];
        
        return [formatter stringFromDate:date];
    }
    else if ([day isEqualToTomorrow]) {
        NSDateFormatter *formatter = [NSDateFormatter sharedTomorrowAndTimeDateFormatter];
        
        return [formatter stringFromDate:date];
    }
    else {
        NSInteger interval = floor(abs([date timeIntervalSinceNow]));
        
        if (interval > TimeIntervalOfOneWeek) {
            NSDateFormatter *formatter = [NSDateFormatter sharedDateAndTimeDateFormatter];
            
            return [formatter stringFromDate:date];
        }
        else {
            NSDateFormatter *formatter = [NSDateFormatter sharedWeekdayAndTimeDateFormatter];
            
            return [formatter stringFromDate:date];
        }
    }
    
    return nil;
}

+ (NSString *)relativeDateOnlyStringFromDate:(NSDate *)date {
    NSDate *day = [date beginningOfDay];
    
    if ([day isEqualToToday]) {
        return @"Today";
    }
    else if ([day isEqualToYesterday]) {
        return @"Yesterday";
    }
    else if ([day isEqualToTomorrow]) {
        return @"Tomorrow";
    }
    else {
        NSInteger interval = floor(abs([date timeIntervalSinceNow]));
        
        if (interval > TimeIntervalOfOneWeek) {
            NSDateFormatter *formatter = [NSDateFormatter sharedDateOnlyDateFormatter];
            
            return [formatter stringFromDate:date];
        }
        else {
            NSDateFormatter *formatter = [NSDateFormatter sharedWeekdayOnlyDateFormatter];
            
            return [formatter stringFromDate:date];
        }
    }
    
    return nil;
}

@end

#pragma mark - Implementation

@implementation NSDateFormatter (Private)

#pragma mark - Class Methods

+ (NSDateFormatter *)sharedDateAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"MMM d, yyyy 'at' h:mm a";
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedDateOnlyDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"MMM d, yyyy";
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedTomorrowAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"'Tomorrow at' h:mm a";
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedWeekdayAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"EEEE 'at' h:mm a";
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedWeekdayOnlyDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"EEEE";
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedYesterdayAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"'Yesterday at' h:mm a";
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

@end
