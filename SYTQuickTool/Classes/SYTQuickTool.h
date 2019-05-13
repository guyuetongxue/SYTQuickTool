//
//  SYTQuickTool.h
//  ZNYiTong
//
//  Created by 徐华 on 16/4/12.
//  Copyright © 2016年 胡庭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SYTQuickTool : NSObject

#pragma mark - 快速创建一个UIView

+ (UIView *)ViewFrame:(CGRect)frame backGroundColor:(UIColor *)backGroundColor cornerRadius:(CGFloat)cornerRadius targetView:(id)targetView;


#pragma mark - 快速创建一个图片

+ (UIImageView *)imageFrame:(CGRect)frame imageStr:(NSString *)imageStr contentMode:(UIViewContentMode)contentMode targetView:(id)targetView;


#pragma mark - 快速创建一个标签

+ (UILabel *)labelFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor BackGroundColor:(UIColor *)backGroundColor font:(int)font textAliganment:(NSTextAlignment)textAliganment targetView:(id)targetView;

#pragma mark -快速创建一个图片按钮

+(UIButton *)customButtonWithFrame:(CGRect)frame title:(NSString*)title titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor backgroundImage:(NSString *)backgroundImage image:(NSString *)image target:(id)target action:(SEL)action targetView:(id)targetView;

#pragma mark - 快速创建一个系统按钮

+(UIButton *)initSystemButtonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action targetView:(id)targetView;

@end
