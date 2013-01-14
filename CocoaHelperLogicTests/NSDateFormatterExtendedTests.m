//
//  NSDateFormatterExtendedTests.m
//  CocoaHelper
//
//  Created by Michael Reneer on 1/10/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "NSDate+Extended.h"
#import "NSDateFormatter+Extended.h"
#import "NSDateFormatterExtendedTests.h"

#pragma mark - Implementation

@implementation NSDateFormatterExtendedTests

#pragma mark - Overriden Methods

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark - Test Methods

- (void)testRelativeDateAndTimeStringFromDate {
    NSDate *date = nil;
    NSString *expected = nil;
    NSString *result = nil;
    
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f - TimeIntervalOfOneSecond];
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    expected = @"1 second ago";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f];
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    expected = @"just now";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f + TimeIntervalOfOneSecond];
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    expected = @"1 second from now";
    STAssertEqualObjects(result, expected, nil);
    
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute - TimeIntervalOfOneSecond];
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    expected = @"59 seconds from now";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute];
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    expected = @"1 minute from now";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute + TimeIntervalOfOneSecond];
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    expected = @"1 minute from now";
    STAssertEqualObjects(result, expected, nil);
    
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour - TimeIntervalOfOneMinute];
    expected = @"59 minutes from now";
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour];
    expected = @"1 hour from now";
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour + TimeIntervalOfOneMinute];
    expected = @"1 hour from now";
    result = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    STAssertEqualObjects(result, expected, nil);
}

- (void)testRelativeDateOnlyStringFromDate {
    NSDate *date = nil;
    NSString *expected = nil;
    NSString *result = nil;
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneDay * -1];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"yesterday";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour * -1];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute * -1];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneSecond * -1];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneSecond];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"today";
    STAssertEqualObjects(result, expected, nil);
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneDay];
    result = [NSDateFormatter relativeDateOnlyStringFromDate:date];
    expected = @"tomorrow";
    STAssertEqualObjects(result, expected, nil);
}

@end
