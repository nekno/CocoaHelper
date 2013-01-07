//
//  NSDateFormatter+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/7/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSDate+Extended.h"
#import "NSDateFormatter+Extended.h"

#pragma mark - Implementation

@implementation NSDateFormatter (Extended)

#pragma mark - Instance Methods

- (NSString *)relativeDateAndTimeStringFromDate:(NSDate *)date {
    NSDate *day = [date beginningOfDay];
    
    if ([day isEqualToToday]) {
        NSInteger interval = round([date timeIntervalSinceNow]);
        
        if (interval * -1 >= TimeIntervalOfOneHour) {
            NSInteger hours = round(interval * -1 / TimeIntervalOfOneHour);
            
            if (hours == 1) {
                return @"1 hour ago";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d hours ago", hours];
            }
        }
        else if (interval * -1 >= TimeIntervalOfOneMinute) {
            NSInteger minutes = round(interval * -1 / TimeIntervalOfOneMinute);
            
            if (minutes == 1) {
                return @"1 minute ago";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d minutes ago", minutes];
            }
        }
        else if (interval * -1 >= TimeIntervalOfOneSecond) {
            NSInteger seconds = round(interval * -1 / TimeIntervalOfOneSecond);
            
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
            NSInteger seconds = round(interval / TimeIntervalOfOneSecond);
            
            if (seconds == 1) {
                return @"1 second from now";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d seconds from now", seconds];
            }
        }
        else if (interval < TimeIntervalOfOneHour) {
            NSInteger minutes = round(interval / TimeIntervalOfOneMinute);
            
            if (minutes == 1) {
                return @"1 minute from now";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d minutes from now", minutes];
            }
        }
        else {
            double hours = round(interval / TimeIntervalOfOneHour);
            
            if (hours == 1) {
                return @"1 hour from now";
            }
            else {
                return [[NSString alloc] initWithFormat:@"%d hours from now", (int)hours];
            }
        }
    }
    else if ([day isEqualToYesterday]) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"'Yesterday at' h:mm a";
        
        return [formatter stringFromDate:date];
    }
    else if ([day isEqualToTomorrow]) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"'Tomorrow at' h:mm a";
        
        return [formatter stringFromDate:date];
    }
    else {
        NSInteger interval = round(abs([date timeIntervalSinceNow]));
        
        if (interval > TimeIntervalOfOneWeek) {
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            formatter.dateFormat = @"MMM d, yyyy 'at' h:mm a";
            
            return [formatter stringFromDate:date];
        }
        else {
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            formatter.dateFormat = @"EEEE 'at' h:mm a";
            
            return [formatter stringFromDate:date];
        }
    }
    
    return nil;
}

- (NSString *)relativeDateOnlyStringFromDate:(NSDate *)date {
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
        NSInteger interval = round(abs([date timeIntervalSinceNow]));
        
        if (interval > TimeIntervalOfOneWeek) {
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            formatter.dateFormat = @"MMM d, yyyy";
            
            return [formatter stringFromDate:date];
        }
        else {
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            formatter.dateFormat = @"EEEE";
            
            return [formatter stringFromDate:date];
        }
    }
    
    return nil;
}

@end
