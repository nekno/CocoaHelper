//
//  NSDateFormatterExtendedTests.m
//  CocoaHelper
//
//  Created by Michael Reneer on 1/10/13.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import <CocoaHelper/CocoaHelper.h>
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
    NSString *actual = nil;
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f - TimeIntervalOfOneSecond];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"1 second ago");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"just now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f + TimeIntervalOfOneSecond];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"1 second from now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute - TimeIntervalOfOneSecond];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"59 seconds from now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"1 minute from now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute + TimeIntervalOfOneSecond];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"1 minute from now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour - TimeIntervalOfOneMinute];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"59 minutes from now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"1 hour from now");
    
    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour + TimeIntervalOfOneMinute];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"1 hour from now");
    
    date = [NSDate yesterday];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"yesterday at 12:00 AM");
    
    date = [NSDate tomorrow];
    actual = [NSDateFormatter relativeDateAndTimeStringFromDate:date];
    XCTAssertEqualObjects(actual, @"tomorrow at 12:00 AM");
    
}

//- (void)testRelativeDateOnlyStringFromDate {
//    NSDate *date = nil;
//    NSString *actual = nil;
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneDay * -1];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"yesterday");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour * -1];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute * -1];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneSecond * -1];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0f];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneSecond];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneMinute];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneHour];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"today");
//    
//    date = [[NSDate alloc] initWithTimeIntervalSinceNow:TimeIntervalOfOneDay];
//    actual = [NSDateFormatter relativeDateOnlyStringFromDate:date];
//    XCTAssertEqualObjects(actual, @"tomorrow");
//}

@end
