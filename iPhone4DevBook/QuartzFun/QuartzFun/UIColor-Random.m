//
//  UIColor-Random.m
//  QuartzFun
//
//  Created by Gerardo Delgado  on 5/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UIColor-Random.h"


@implementation UIColor (Random)
+ (UIColor *)randomColor {
    static BOOL seeded = NO;
    if (!seeded) {
        seeded = YES;
        srandom(time(NULL));
    }
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}

@end
