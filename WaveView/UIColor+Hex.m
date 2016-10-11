//
//  UIColor+Hex.m
//  WaveView
//
//  Created by zhangcong on 2016/10/11.
//  Copyright © 2016年 renrenlab. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
+ (UIColor *)colorFromHexString:(NSString *)hexString
{
    
    if ([[hexString substringToIndex:1] isEqualToString:@"#"]) {
        hexString = [hexString substringFromIndex:1];
    }
    
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0
                           green:((rgbValue & 0xFF00) >> 8)/255.0
                            blue:(rgbValue & 0xFF)/255.0
                           alpha:1.0];
}

@end
