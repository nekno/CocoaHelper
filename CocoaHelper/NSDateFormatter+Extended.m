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
        
        if (interval <= TimeIntervalOfOneHour * -1) {
            NSInteger hours = floor(interval / TimeIntervalOfOneHour * -1);
            
            if (hours == 1) {
                NSString *hoursFormat = NSLocalizedString(@"HOUR_AGO", @"Format for the relative date and time string for a date equal to today and 1 hour ago.");
                
                return [[NSString alloc] initWithFormat:hoursFormat, hours];
            }
            else {
                NSString *hoursFormat = NSLocalizedString(@"HOURS_AGO", @"Format for the relative date and time string for a date equal to today and more than 1 hour ago.");
                
                return [[NSString alloc] initWithFormat:hoursFormat, hours];
            }
        }
        else if (interval <= TimeIntervalOfOneMinute * -1) {
            NSInteger minutes = floor(interval / TimeIntervalOfOneMinute * -1);
            
            if (minutes == 1) {
                NSString *minutesFormat = NSLocalizedString(@"MINUTE_AGO", @"Format for the relative date and time string for a date equal to today and for 1 minute ago.");
                
                return [[NSString alloc] initWithFormat:minutesFormat, minutes];
            }
            else {
                NSString *minutesFormat = NSLocalizedString(@"MINUTES_AGO", @"Format for the relative date and time string for a date equal to today and for more than 1 minute ago.");
                
                return [[NSString alloc] initWithFormat:minutesFormat, minutes];
            }
        }
        else if (interval <= TimeIntervalOfOneSecond * -1) {
            NSInteger seconds = floor(interval / TimeIntervalOfOneSecond * -1);
            
            if (seconds == 1) {
                NSString *secondsFormat = NSLocalizedString(@"SECOND_AGO", @"Format for the relative date and time string for a date equal to today and for 1 second ago.");
                
                return [[NSString alloc] initWithFormat:secondsFormat, seconds];
            }
            else {
                NSString *secondsFormat = NSLocalizedString(@"SECONDS_AGO", @"Format for the relative date and time string for a date equal to today and for more than 1 minute ago.");
                
                return [[NSString alloc] initWithFormat:secondsFormat, seconds];
            }
        }
        else if (interval >= TimeIntervalOfOneHour) {
            NSInteger hours = floor(interval / TimeIntervalOfOneHour);
            
            if (hours == 1) {
                NSString *format = NSLocalizedString(@"HOUR_FROM_NOW", @"Format for the relative date and time string for a date equal to today and for 1 hour from now.");
                
                return [[NSString alloc] initWithFormat:format, hours];
            }
            else {
                NSString *format = NSLocalizedString(@"HOURS_FROM_NOW", @"Format for the relative date and time string for a date equal to today and for more than 1 hour from now.");
                
                return [[NSString alloc] initWithFormat:format, hours];
            }
        }
        else if (interval >= TimeIntervalOfOneMinute) {
            NSInteger minutes = floor(interval / TimeIntervalOfOneMinute);
            
            if (minutes == 1) {
                NSString *format = NSLocalizedString(@"MINUTE_FROM_NOW", @"Format for the relative date and time string for a date equal to today and for 1 minute from now.");
                
                return [[NSString alloc] initWithFormat:format, minutes];
            }
            else {
                NSString *format = NSLocalizedString(@"MINUTES_FROM_NOW", @"Format for the relative date and time string for a date equal to today and for more than 1 minute from now.");
                
                return [[NSString alloc] initWithFormat:format, minutes];
            }
        }
        else if (interval >= TimeIntervalOfOneSecond) {
            NSInteger seconds = floor(interval / TimeIntervalOfOneSecond);
            
            if (seconds == 1) {
                NSString *format = NSLocalizedString(@"SECOND_FROM_NOW", @"Format for the relative date and time string for a date equal to today and for 1 second from now.");
                
                return [[NSString alloc] initWithFormat:format, seconds];
            }
            else {
                NSString *format = NSLocalizedString(@"SECONDS_FROM_NOW", @"Format for the relative date and time string for a date equal to today and for more than 1 second from now.");
                
                return [[NSString alloc] initWithFormat:format, seconds];
            }
        }
        else {
            return NSLocalizedString(@"NOW", @"String for the relative date and time string for now.");
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
        NSInteger interval = floor(abs([day timeIntervalSinceToday]));
        
        if (interval < TimeIntervalOfSevenDays) {
            NSDateFormatter *formatter = [NSDateFormatter sharedWeekdayAndTimeDateFormatter];
            
            return [formatter stringFromDate:date];
        }
        else {
            NSDateFormatter *formatter = [NSDateFormatter sharedDateAndTimeDateFormatter];
            
            return [formatter stringFromDate:date];
        }
    }
    
    return nil;
}

+ (NSString *)relativeDateOnlyStringFromDate:(NSDate *)date {
    NSDate *day = [date beginningOfDay];
    
    if ([day isEqualToToday]) {
        return NSLocalizedString(@"TODAY", @"String for relative date string for today.");
    }
    else if ([day isEqualToYesterday]) {
        return NSLocalizedString(@"YESTERDAY", @"String for relative date string for yesterday.");
    }
    else if ([day isEqualToTomorrow]) {
        return NSLocalizedString(@"TOMORROW", @"String for relative date string for tomorrow.");
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
        NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
        NSString *dateComponent = [NSDateFormatter dateFormatFromTemplate:@"MMMdyyyy" options:0 locale:locale];
        NSString *timeComponent = [NSDateFormatter dateFormatFromTemplate:@"hmma" options:0 locale:locale];
        NSString *separator = NSLocalizedString(@"DATE_TIME_SEPARATOR", @"String for joining the date and time components of the date format string.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"%@%@%@", dateComponent, separator, timeComponent];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedDateOnlyDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
        NSString *dateFormat = [NSDateFormatter dateFormatFromTemplate:@"MMMdyyyy" options:0 locale:locale];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedTomorrowAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
        NSString *timeComponent = [NSDateFormatter dateFormatFromTemplate:@"hmma" options:0 locale:locale];
        NSString *separator = NSLocalizedString(@"DATE_TIME_SEPARATOR", @"String for joining the date and time components of the date format string.");
        NSString *tomorrow = NSLocalizedString(@"TOMORROW", @"String for relative date string for tomorrow.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"%@%@%@", tomorrow, separator, timeComponent];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedWeekdayAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
        NSString *dateComponent = [NSDateFormatter dateFormatFromTemplate:@"EEEE" options:0 locale:locale];
        NSString *timeComponent = [NSDateFormatter dateFormatFromTemplate:@"hmma" options:0 locale:locale];
        NSString *separator = NSLocalizedString(@"DATE_TIME_SEPARATOR", @"String for joining the date and time components of the date format string.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"%@%@%@", dateComponent, separator, timeComponent];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedWeekdayOnlyDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
        NSString *dateFormat = [NSDateFormatter dateFormatFromTemplate:@"EEEE" options:0 locale:locale];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

+ (NSDateFormatter *)sharedYesterdayAndTimeDateFormatter {
    static NSDateFormatter *formatter = nil;
    
    dispatch_block_t block = ^(void) {
        NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
        NSString *timeComponent = [NSDateFormatter dateFormatFromTemplate:@"hmma" options:0 locale:locale];
        NSString *separator = NSLocalizedString(@"DATE_TIME_SEPARATOR", @"String for joining the date and time components of the date format string.");
        NSString *yesterday = NSLocalizedString(@"YESTERDAY", @"String for relative date string for yesterday.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"%@%@%@", yesterday, separator, timeComponent];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

@end
