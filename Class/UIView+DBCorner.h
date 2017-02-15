//
//  UIView+DBCorner.h
//  DBCorner
//
//  Created by DreamBuddy on 16/5/21.
//  Copyright © 2016年 DreamBuddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBBorderUtils.h"

@interface UIView (DBCorner)

/*
 * @brief 这个Api不支持自动布局
 * @param radius: 角度
 * @param bgColor: 背景颜色,必填项 需要和当前控件的父视图颜色相同
 * @param 边框颜色: 默认绘制1个像素的边框,没有边框写nil即可
 */
- (void)db_roundingCornerWithRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor;


- (void)db_roundingCornerWithRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth;

- (void)db_roundingCorner:(UIRectCorner)roundCorner radius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth rect:(CGRect)realRect;

/** 自定义边框属性 exp:虚线/实线 */
- (void)db_roundingCorner:(UIRectCorner)roundCorner radius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderConfig:(DBCommonBlock)borderConfig rect:(CGRect)realRect;

/** 支持自动布局的API */
- (void)db_roundingCornerUsingAutoLayout:(UIRectCorner)roundCorner radius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderConfig:(DBCommonBlock)borderConfig;

@end
