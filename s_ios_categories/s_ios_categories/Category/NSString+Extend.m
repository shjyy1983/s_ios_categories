//
//  NSString+Extend.m
//  AllTestHere15
//
//  Created by hs on 16/11/28.
//  Copyright © 2016年 shj. All rights reserved.
//

#import "NSString+Extend.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Extend)

+ (NSString *)md5:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result); // This is the md5 call
    return [[NSString stringWithFormat:
             @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] uppercaseString];
}

+ (CGSize)sizeofString:(NSString *)string font:(UIFont *)font maxWidth:(CGFloat)width {
    CGSize constrain = CGSizeMake(width, FLT_MAX);
    NSDictionary *attr = @{NSFontAttributeName:font};
    CGRect frame = [string boundingRectWithSize:constrain options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil];
    return CGSizeMake(ceilf(frame.size.width), ceilf(frame.size.height));
}

@end
