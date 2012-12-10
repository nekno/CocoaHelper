//
//  UITableView+Extended.m
//  CocoaHelper
//
//  Created by Michael Reneer on 6/14/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "UITableView+Extended.h"

#pragma mark - Implementation

@implementation UITableView (Extended)

#pragma mark - Instance Properties

@dynamic backgroundView;

#pragma mark - Instance Methods

- (CGRect)rectForSelectedRow {
    NSIndexPath *indexPath = [self indexPathForSelectedRow];
    
    return [self rectForRowAtIndexPath:indexPath];
}

@end
