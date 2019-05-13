//
//  SYTQuickTool.m
//  ZNYiTong
//
//  Created by 徐华 on 16/4/12.
//  Copyright © 2016年 胡庭. All rights reserved.
//

#import "SYTQuickTool.h"

@implementation SYTQuickTool

+ (UIView *)ViewFrame:(CGRect)frame backGroundColor:(UIColor *)backGroundColor cornerRadius:(CGFloat)cornerRadius targetView:(id)targetView
{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = backGroundColor;
    view.layer.cornerRadius = cornerRadius;
    [targetView addSubview:view];
    
    return view;
}

+ (UIImageView *)imageFrame:(CGRect)frame imageStr:(NSString *)imageStr contentMode:(UIViewContentMode)contentMode targetView:(id)targetView
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.contentMode = contentMode;
    if (imageStr != nil) {
        imageView.image = [UIImage imageNamed:imageStr];
    }
    [targetView addSubview:imageView];
    
    return imageView;
}

+ (UILabel *)labelFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor BackGroundColor:(UIColor *)backGroundColor font:(int)font textAliganment:(NSTextAlignment)textAliganment targetView:(id)targetView
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.backgroundColor = backGroundColor;
    label.font = [UIFont systemFontOfSize:font];
    label.textAlignment = textAliganment;
//    label.adjustsFontSizeToFitWidth = YES;
    [targetView addSubview:label];
    
    return label;
}

+ (UIButton *)customButtonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor backgroundImage:(NSString *)backgroundImageStr image:(NSString *)imageStr target:(id)target action:(SEL)action targetView:(id)targetView
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    if (backgroundImageStr != nil) {
       [button setBackgroundImage:[UIImage imageNamed:backgroundImageStr] forState:UIControlStateNormal];
    }
    if (imageStr != nil) {
        [button setImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    }
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = backGroundColor;
//    button.titleLabel.adjustsFontSizeToFitWidth = YES;
    [targetView addSubview:button];
    
    return button;
    
}

//快速创建一个系统button
+(UIButton *)initSystemButtonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action targetView:(id)targetView
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    button.frame = frame;
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    button.titleLabel.adjustsFontSizeToFitWidth = YES;
    
    [targetView addSubview:button];
    
    return button;
}



@end
