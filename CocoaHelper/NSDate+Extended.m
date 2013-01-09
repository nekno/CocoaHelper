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
NSTimeInterval const TimeIntervalOfOneMinute = 60.0f;
NSTimeInterval const TimeIntervalOfOneSecond = 1.0f;
NSTimeInterval const TimeIntervalOfOneWeek = 604800.0f;
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

+ (id)beginningOfWeekday:(NSInteger)weekday {
    NSDate *date = [NSDate now];
    
    return [date beginningOfWeekday:weekday];
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
    NSDate *date = [NSDate now];
    
    return [date beginningOfNextDay];
}

+ (id)yesterday {
    NSDate *date = [NSDate now];
    
    return [date beginningOfPreviousDay];
}

#pragma mark - Instance Methods

- (NSDate *)beginningOfDay {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSUInteger units = (NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit);
    NSDateComponents *components = [calendar components:units fromDate:self];
    
    return [calendar dateFromComponents:components];
}

- (NSDate *)beginningOfMonth {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSUInteger units = (NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit);
    NSDateComponents *components = [calendar components:units fromDate:self];
    [components setDay:1];
    
    return [calendar dateFromComponents:components];
}

- (NSDate *)beginningOfNextDay {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [self beginningOfDay];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSDate *)beginningOfPreviousDay {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [self beginningOfDay];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:-1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSDate *)beginningOfWeek {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSUInteger units = (NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit);
    NSDateComponents *components = [calendar components:units fromDate:self];
    [components setWeekday:1];
    
    return [calendar dateFromComponents:components];
}

- (NSDate *)beginningOfWeekday:(NSInteger)weekday {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSInteger day = weekday - [self weekday];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:day];
    
    return [calendar dateByAddingComponents:components toDate:self options:0];
}

- (NSDate *)endOfDay {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [self beginningOfDay];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSDate *)endOfMonth {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [self beginningOfMonth];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setMonth:1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSDate *)endOfWeek {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [self beginningOfMonth];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setWeek:1];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (id)initWithTimeIntervalSinceToday:(NSTimeInterval)interval {
    NSDate *date = [NSDate today];
    
    return [self initWithTimeInterval:interval sinceDate:date];
}

- (id)initWithTimeIntervalSinceTomorrow:(NSTimeInterval)interval {
    NSDate *date = [NSDate tomorrow];
    
    return [self initWithTimeInterval:interval sinceDate:date];
}

- (id)initWithTimeIntervalSinceYesterday:(NSTimeInterval)interval {
    NSDate *date = [NSDate yesterday];
    
    return [self initWithTimeInterval:interval sinceDate:date];
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
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [self beginningOfDay];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setHour:12];
    
    return [calendar dateByAddingComponents:components toDate:date options:0];
}

- (NSTimeInterval)timeIntervalSinceToday {
    NSDate *date = [NSDate today];
    
    return [self timeIntervalSinceDate:date];
}

- (NSTimeInterval)timeIntervalSinceTomorrow {
    NSDate *date = [NSDate tomorrow];
    
    return [self timeIntervalSinceDate:date];
}

- (NSTimeInterval)timeIntervalSinceYesterday {
    NSDate *date = [NSDate yesterday];
    
    return [self timeIntervalSinceDate:date];
}

- (NSInteger)weekday {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSUInteger units = NSWeekdayCalendarUnit;
    NSDateComponents *components = [calendar components:units fromDate:self];
    
	return [components weekday];
}

@end
