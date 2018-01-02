//
//  NSString+HJSize.m
//  s_ios_categories
//
//  Created by shj on 2018/1/2.
//  Copyright © 2018年 SHEN HJ. All rights reserved.
//

#import "NSString+HJSize.h"

@implementation NSString (HJSize)

+ (CGSize)sizeofString:(NSString *)string font:(UIFont *)font maxWidth:(CGFloat)width { 
    CGSize constrain = CGSizeMake(width, FLT_MAX);
    NSDictionary *attr = @{NSFontAttributeName:font};
    CGRect frame = [string boundingRectWithSize:constrain options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil];
    return CGSizeMake(ceilf(frame.size.width), ceilf(frame.size.height));
}

@end
