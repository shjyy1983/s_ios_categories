//
//  NSString+HJSize.h
//  s_ios_categories
//
//  Created by shj on 2018/1/2.
//  Copyright © 2018年 SHEN HJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (HJSize)

+ (CGSize)sizeofString:(NSString *)string font:(UIFont *)font maxWidth:(CGFloat)width;

@end
