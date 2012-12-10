//
//  NSDate+Extended.h
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Constants

extern NSTimeInterval const TimeIntervalOfFiveDays;
extern NSTimeInterval const TimeIntervalOfFourDays;
extern NSTimeInterval const TimeIntervalOfOneDay;
extern NSTimeInterval const TimeIntervalOfOneHour;
extern NSTimeInterval const TimeIntervalOfOneMinute;
extern NSTimeInterval const TimeIntervalOfOneSecond;
extern NSTimeInterval const TimeIntervalOfOneWeek;
extern NSTimeInterval const TimeIntervalOfSixDays;
extern NSTimeInterval const TimeIntervalOfThirtyDays;
extern NSTimeInterval const TimeIntervalOfThreeDays;
extern NSTimeInterval const TimeIntervalOfTwoDays;

#pragma mark - Interface

@interface NSDate (Extended)

+ (id)beginningOfMonth;
+ (id)beginningOfWeek;
+ (id)beginningOfWeekday:(NSInteger)weekday;
+ (id)endOfMonth;
+ (id)endOfWeek;
+ (id)now;
+ (id)today;
+ (id)tomorrow;
+ (id)yesterday;

- (NSDate *)beginningOfDay;
- (NSDate *)beginningOfMonth;
- (NSDate *)beginningOfNextDay;
- (NSDate *)beginningOfPreviousDay;
- (NSDate *)beginningOfWeek;
- (NSDate *)beginningOfWeekday:(NSInteger)weekday;
- (NSDate *)endOfDay;
- (NSDate *)endOfMonth;
- (NSDate *)endOfWeek;
- (id)initWithTimeIntervalSinceToday:(NSTimeInterval)interval;
- (id)initWithTimeIntervalSinceTomorrow:(NSTimeInterval)interval;
- (id)initWithTimeIntervalSinceYesterday:(NSTimeInterval)interval;
- (BOOL)isEqualToToday;
- (BOOL)isEqualToTomorrow;
- (BOOL)isEqualToYesterday;
- (NSDate *)noon;
- (NSTimeInterval)timeIntervalSinceToday;
- (NSTimeInterval)timeIntervalSinceTomorrow;
- (NSTimeInterval)timeIntervalSinceYesterday;
- (NSInteger)weekday;

@end
