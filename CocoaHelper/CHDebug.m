//
//  CHDebug.m
//  CocoaHelper
//
//  Created by Michael Reneer on 9/5/12.
//  Copyright (c) 2013 Michael Reneer. All rights reserved.
//

#import "CHDebug.h"

#pragma mark - Constants

void CHDebugLog(NSString *format, ...) {
#ifdef DEBUG
    va_list arguments;
    va_start(arguments, format);
    
    NSLogv(format, arguments);
    
    va_end(arguments);
#endif
}
