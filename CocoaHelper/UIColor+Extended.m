//
//  UIColor+Extended
//  CocoaHelper
//
//  Created by Michael Reneer on 6/7/12.
//  Copyright (c) 2012 Michael Reneer. All rights reserved.
//

#import "UIColor+Extended.h"

#pragma mark - Implementation

@implementation UIColor (Extended)

#pragma mark - Class Methods

+ (UIColor *)aluminumColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 153.0f / 255.0f;
        CGFloat green = 153.0f / 255.0f;
        CGFloat red = 153.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)aquaColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)asparagusColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)bananaColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 102.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)blueberryColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)bubblegumColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 102.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)cantaloupeColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 102.0f / 255.0f;
        CGFloat green = 204.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)carnationColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 207.0f / 255.0f;
        CGFloat green = 111.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)cayenneColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)cloverColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)eggplantColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 64.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)fernColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 64.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)floraColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 102.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 102.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)grapeColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)honeydewColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 102.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 204.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)iceColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 102.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)ironColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 76.0f / 255.0f;
        CGFloat green = 76.0f / 255.0f;
        CGFloat red = 76.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)lavenderColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 102.0f / 255.0f;
        CGFloat red = 204.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)leadColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 25.0f / 255.0f;
        CGFloat green = 25.0f / 255.0f;
        CGFloat red = 25.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)lemonColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)licoriceColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)limeColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)magnesiumColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 179.0f / 255.0f;
        CGFloat green = 179.0f / 255.0f;
        CGFloat red = 179.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)maraschinoColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)maroonColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 64.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)midnightColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)mochaColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 64.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)mossColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 64.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)murcuryColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 230.0f / 255.0f;
        CGFloat green = 230.0f / 255.0f;
        CGFloat red = 230.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)nickelColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)oceanColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 64.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)orchidColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 102.0f / 255.0f;
        CGFloat red = 102.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)plumColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 128.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)salmonColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 102.0f / 255.0f;
        CGFloat green = 102.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)seaFoamColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)silverColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 204.0f / 255.0f;
        CGFloat green = 204.0f / 255.0f;
        CGFloat red = 204.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)skyColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 204.0f / 255.0f;
        CGFloat red = 102.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)snowColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)spindriftColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 204.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 102.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)springColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)steelColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 102.0f / 255.0f;
        CGFloat green = 102.0f / 255.0f;
        CGFloat red = 102.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)strawberryColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 105.0f / 255.0f;
        CGFloat green = 0.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)tangerineColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 0.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 255.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)tealColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 128.0f / 255.0f;
        CGFloat green = 128.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)tinColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 127.0f / 255.0f;
        CGFloat green = 127.0f / 255.0f;
        CGFloat red = 127.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)tungstenColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 51.0f / 255.0f;
        CGFloat green = 51.0f / 255.0f;
        CGFloat red = 51.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

+ (UIColor *)turquoiseColor {
    static UIColor *color = nil;
    
    dispatch_block_t block = ^(void) {
        CGFloat alpha = 1.0f;
        CGFloat blue = 255.0f / 255.0f;
        CGFloat green = 255.0f / 255.0f;
        CGFloat red = 0.0f / 255.0f;
        
        color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
    };
    
    static dispatch_once_t predicate = 0;
    dispatch_once(&predicate, block);
    
    return color;
}

@end
