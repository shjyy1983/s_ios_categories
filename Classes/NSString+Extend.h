//
//  NSString+Extend.h
//  AllTestHere15
//
//  Created by hs on 16/11/28.
//  Copyright © 2016年 shj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extend)

+ (NSString *)md5:(NSString *)str;
+ (CGSize)sizeofString:(NSString *)string font:(UIFont *)font maxWidth:(CGFloat)width;
@end
