//
//  UIView+DBCorner.m
//  DBCorner
//
//  Created by DreamBuddy on 16/5/21.
//  Copyright © 2016年 DreamBuddy. All rights reserved.
//

#import "UIView+DBCorner.h"

static NSString *DBCornerLayerName = @"DBCornerShapeLayer";
#define DB_SINGLE_LINE_WIDTH (1 / [UIScreen mainScreen].scale)
#define DB_Screen_Scale ([UIScreen mainScreen].scale)

@implementation UIView (DBCorner)

- (void)db_roundingCornerWithRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor{
    [self db_roundingCorner:UIRectCornerAllCorners radius:radius backgroundColor:bgColor borderColor:borderColor borderWidth:DB_SINGLE_LINE_WIDTH rect:CGRectNull];
}

- (void)db_roundingCornerWithRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth{
    [self db_roundingCorner:UIRectCornerAllCorners radius:radius backgroundColor:bgColor borderColor:borderColor borderWidth:borderWidth rect:CGRectNull];
}

- (void)db_roundingCorner:(UIRectCorner)roundCorner radius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth rect:(CGRect)realRect{
    CGRect bounds = CGSizeEqualToSize(realRect.size, CGSizeZero) ? self.bounds : realRect;
    bounds.size.width += .13*DB_Screen_Scale;
    bounds.size.height += .13*DB_Screen_Scale;
    /*
     需要 优化 AutoLayout 自动计算
     CGSize size = [customContentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
     */
    
    [self removeDBCorner];
    
    CGFloat width = CGRectGetWidth(bounds);
    CGFloat height = CGRectGetHeight(bounds);
    UIBezierPath * path= [UIBezierPath bezierPathWithRect:CGRectMake(-0.2, -0.2, width, height)];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.name = DBCornerLayerName;
    /*
     http://huanyueyaoqin.com/2015/07/15/UIBezierPath%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/
     */
    UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:bounds byRoundingCorners:roundCorner cornerRadii:CGSizeMake(radius, 0)];
    [path  appendPath:cornerPath];
    //[path setUsesEvenOddFillRule:YES];
    shapeLayer.path = path.CGPath;
    /*
     字面意思是“奇偶”。按该规则，要判断一个点是否在图形内，从该点作任意方向的一条射线，然后检测射线与图形路径的交点的数量。如果结果是奇数则认为点在内部，是偶数则认为点在外部
     */
    shapeLayer.fillRule = kCAFillRuleEvenOdd;
    shapeLayer.fillColor = bgColor.CGColor;
    if (borderColor) {
        UIBezierPath *borderPath = [UIBezierPath bezierPathWithRoundedRect:bounds byRoundingCorners:roundCorner cornerRadii:CGSizeMake(radius, 0)];
        CAShapeLayer *borderLayer = [CAShapeLayer layer];
        borderLayer.path = borderPath.CGPath;
        borderLayer.strokeColor = borderColor.CGColor;
        borderLayer.lineWidth = borderWidth;
        borderLayer.fillColor = UIColor.clearColor.CGColor;
        [shapeLayer addSublayer:borderLayer];
    }
    if ([self isKindOfClass:[UILabel class]]) {
        //UILabel 机制不一样的  UILabel 设置 text 为 中文 也会造成图层混合 (iOS8 之后UILabel的layer层改成了 _UILabelLayer 具体可阅读 http://www.jianshu.com/p/db6602413fa3 )
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.layer addSublayer:shapeLayer];
        });
        return;
    }
    
    [self.layer addSublayer:shapeLayer];
}

-(void)removeDBCorner {
    if ([self hasDBCornered]) {
        CALayer *layer = nil;
        for (CALayer *subLayer in self.layer.sublayers) {
            if ([subLayer.name isEqualToString:DBCornerLayerName]) {
                layer = subLayer;
            }
        }
        [layer removeFromSuperlayer];
    }
}

- (BOOL)hasDBCornered {
    for (CALayer *subLayer in self.layer.sublayers) {
        if ([subLayer isKindOfClass:[CAShapeLayer class]] && [subLayer.name isEqualToString:DBCornerLayerName]) {
            return YES;
        }
    }
    return NO;
}

@end
