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

static NSString* const MainBundleIdentifier = @"com.michaelreneer.CocoaHelper";

#pragma mark - Instance Methods

+ (NSString *)relativeDateAndTimeStringFromDate:(NSDate *)date {
    NSDate *day = [date beginningOfDay];
    
    if ([day isEqualToToday]) {
        NSTimeInterval interval = round([date timeIntervalSinceNow]);
        
        if (interval <= TimeIntervalOfOneHour * -1) {
            NSInteger hours = floor(interval / TimeIntervalOfOneHour * -1);
            
            if (hours == 1) {
                NSString *hoursFormat = NSLocalizedStringFromTableInBundle(@"HOUR_AGO", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and 1 hour ago.");
                
                return [[NSString alloc] initWithFormat:hoursFormat, hours];
            }
            else {
                NSString *hoursFormat = NSLocalizedStringFromTableInBundle(@"HOURS_AGO", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and more than 1 hour ago.");
                
                return [[NSString alloc] initWithFormat:hoursFormat, hours];
            }
        }
        else if (interval <= TimeIntervalOfOneMinute * -1) {
            NSInteger minutes = floor(interval / TimeIntervalOfOneMinute * -1);
            
            if (minutes == 1) {
                NSString *minutesFormat = NSLocalizedStringFromTableInBundle(@"MINUTE_AGO", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for 1 minute ago.");
                
                return [[NSString alloc] initWithFormat:minutesFormat, minutes];
            }
            else {
                NSString *minutesFormat = NSLocalizedStringFromTableInBundle(@"MINUTES_AGO", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for more than 1 minute ago.");
                
                return [[NSString alloc] initWithFormat:minutesFormat, minutes];
            }
        }
        else if (interval <= TimeIntervalOfOneSecond * -1) {
            NSInteger seconds = floor(interval / TimeIntervalOfOneSecond * -1);
            
            if (seconds == 1) {
                NSString *secondsFormat = NSLocalizedStringFromTableInBundle(@"SECOND_AGO", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for 1 second ago.");
                
                return [[NSString alloc] initWithFormat:secondsFormat, seconds];
            }
            else {
                NSString *secondsFormat = NSLocalizedStringFromTableInBundle(@"SECONDS_AGO", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for more than 1 minute ago.");
                
                return [[NSString alloc] initWithFormat:secondsFormat, seconds];
            }
        }
        else if (interval >= TimeIntervalOfOneHour) {
            NSInteger hours = floor(interval / TimeIntervalOfOneHour);
            
            if (hours == 1) {
                NSString *format = NSLocalizedStringFromTableInBundle(@"HOUR_FROM_NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for 1 hour from now.");
                
                return [[NSString alloc] initWithFormat:format, hours];
            }
            else {
                NSString *format = NSLocalizedStringFromTableInBundle(@"HOURS_FROM_NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for more than 1 hour from now.");
                
                return [[NSString alloc] initWithFormat:format, hours];
            }
        }
        else if (interval >= TimeIntervalOfOneMinute) {
            NSInteger minutes = floor(interval / TimeIntervalOfOneMinute);
            
            if (minutes == 1) {
                NSString *format = NSLocalizedStringFromTableInBundle(@"MINUTE_FROM_NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for 1 minute from now.");
                
                return [[NSString alloc] initWithFormat:format, minutes];
            }
            else {
                NSString *format = NSLocalizedStringFromTableInBundle(@"MINUTES_FROM_NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for more than 1 minute from now.");
                
                return [[NSString alloc] initWithFormat:format, minutes];
            }
        }
        else if (interval >= TimeIntervalOfOneSecond) {
            NSInteger seconds = floor(interval / TimeIntervalOfOneSecond);
            
            if (seconds == 1) {
                NSString *format = NSLocalizedStringFromTableInBundle(@"SECOND_FROM_NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for 1 second from now.");
                
                return [[NSString alloc] initWithFormat:format, seconds];
            }
            else {
                NSString *format = NSLocalizedStringFromTableInBundle(@"SECONDS_FROM_NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"Format for the relative date and time string for a date equal to today and for more than 1 second from now.");
                
                return [[NSString alloc] initWithFormat:format, seconds];
            }
        }
        else {
            return NSLocalizedStringFromTableInBundle(@"NOW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for the relative date and time string for now.");
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
        NSDate *today = [NSDate today];
        NSInteger interval = floor(abs([day timeIntervalSinceDate:today]));
        
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
        return NSLocalizedStringFromTableInBundle(@"TODAY", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for relative date string for today.");
    }
    else if ([day isEqualToYesterday]) {
        return NSLocalizedStringFromTableInBundle(@"YESTERDAY", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for relative date string for yesterday.");
    }
    else if ([day isEqualToTomorrow]) {
        return NSLocalizedStringFromTableInBundle(@"TOMORROW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for relative date string for tomorrow.");
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
        NSString *separator = NSLocalizedStringFromTableInBundle(@"DATE_TIME_SEPARATOR", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for joining the date and time components of the date format string.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"%@'%@'%@", dateComponent, separator, timeComponent];
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
        NSString *separator = NSLocalizedStringFromTableInBundle(@"DATE_TIME_SEPARATOR", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for joining the date and time components of the date format string.");
        NSString *tomorrow = NSLocalizedStringFromTableInBundle(@"TOMORROW", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for relative date string for tomorrow.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"'%@%@'%@", tomorrow, separator, timeComponent];
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
        NSString *separator = NSLocalizedStringFromTableInBundle(@"DATE_TIME_SEPARATOR", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for joining the date and time components of the date format string.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"%@'%@'%@", dateComponent, separator, timeComponent];
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
        NSString *separator = NSLocalizedStringFromTableInBundle(@"DATE_TIME_SEPARATOR", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for joining the date and time components of the date format string.");
        NSString *yesterday = NSLocalizedStringFromTableInBundle(@"YESTERDAY", nil, [NSBundle bundleWithIdentifier:MainBundleIdentifier], @"String for relative date string for yesterday.");
        NSString *dateFormat = [[NSString alloc] initWithFormat:@"'%@%@'%@", yesterday, separator, timeComponent];
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return formatter;
}

@end
