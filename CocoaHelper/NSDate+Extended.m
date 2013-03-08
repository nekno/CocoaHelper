//
//  NSDate+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "NSDate+Extended.h"

#pragma mark - Constants

NSTimeInterval const TimeIntervalOfFiveDays = 432000.0f;
NSTimeInterval const TimeIntervalOfFourDays = 345600.0f;
NSTimeInterval const TimeIntervalOfOneDay = 86400.0f;
NSTimeInterval const TimeIntervalOfOneHour = 3600.0f;
NSTimeInterval const TimeIntervalOfOneMillisecond = 0.001f;
NSTimeInterval const TimeIntervalOfOneMinute = 60.0f;
NSTimeInterval const TimeIntervalOfOneSecond = 1.0f;
NSTimeInterval const TimeIntervalOfOneWeek = 604800.0f;
NSTimeInterval const TimeIntervalOfSevenDays = 604800.0f;
NSTimeInterval const TimeIntervalOfSixDays = 518400.0f;
NSTimeInterval const TimeIntervalOfThirtyDays = 2592000.0f;
NSTimeInterval const TimeIntervalOfThreeDays = 259200.0f;
NSTimeInterval const TimeIntervalOfTwoDays = 172800.0f;

#pragma mark - Implementation

@implementation NSDate (Extended)

#pragma mark - Class Methods

+ (id)beginningOfMonth {
    NSDate *date = [NSDate now];
    
    return [date beginningOfMonth];
}

+ (id)beginningOfWeek {
    NSDate *date = [NSDate now];
    
    return [date beginningOfWeek];
}

+ (id)endOfMonth {
    NSDate *date = [NSDate now];
    
    return [date endOfMonth];
}

+ (id)endOfWeek {
    NSDate *date = [NSDate now];
    
    return [date beginningOfWeek];
}

+ (id)now {
    return [[NSDate alloc] init];
}

+ (id)today {
    NSDate *date = [NSDate now];
    
    return [date beginningOfDay];
}

+ (id)tomorrow {
    NSDate *date = [NSDate today];
    
    return [date dateByAddingDays:1];
}

+ (id)yesterday {
    NSDate *date = [NSDate today];
    
    return [date dateByAddingDays:-1];
}

#pragma mark - Instance Methods

- (NSDate *)beginningOfDay {
    NSUInteger units = (NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit);
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [calendar components:units fromDate:self];
    
    return [calendar dateFromComponents:components];
}

- (NSDate *)beginningOfMonth {
    NSUInteger units = (NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit);
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [calendar components:units fromDate:self];
    [components setDay:1];
    
    return [calendar dateFromComponents:components];
}

- (NSDate *)beginningOfWeek {
    NSUInteger units = (NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit);
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [calendar components:units fromDate:self];
    [components setWeekday:1];
    
    return [calendar dateFromComponents:components];
}

- (NSDate *)dateByAddingDays:(NSInteger)days {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:days];
    
    return [calendar dateByAddingComponents:components toDate:self options:0];
}

- (NSDate *)endOfDay {
    NSDate *date = [self beginningOfDay];
    
    return [date dateByAddingDays:1];
}

- (NSDate *)endOfMonth {
    NSDate *date = [self beginningOfMonth];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setMonth:1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSDate *)endOfWeek {
    NSDate *date = [self beginningOfWeek];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setWeek:1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (BOOL)isEqualToToday {
    NSDate *date = [NSDate today];
    
    return [self isEqualToDate:date];
}

- (BOOL)isEqualToTomorrow {
    NSDate *date = [NSDate tomorrow];
    
    return [self isEqualToDate:date];
}

- (BOOL)isEqualToYesterday {
    NSDate *date = [NSDate yesterday];
    
    return [self isEqualToDate:date];
}

- (NSDate *)noon {
    NSDate *date = [self beginningOfDay];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setHour:12];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSInteger)weekday {
    NSUInteger units = NSWeekdayCalendarUnit;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [calendar components:units fromDate:self];
    
	return [components weekday];
}

@end
