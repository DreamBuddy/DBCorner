//
//  UIView+DBCorner.h
//  DBCorner
//
//  Created by DreamBuddy on 16/5/21.
//  Copyright © 2016年 DreamBuddy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, DBRoundCorner) {
    DBRoundCornerTopLeft = UIRectCornerTopLeft,
    DBRoundCornerTopRight = UIRectCornerTopRight,
    DBRoundCornerBottomLeft = UIRectCornerBottomLeft,
    DBRoundCornerBottomRight = UIRectCornerBottomRight,
    DBRoundCornerAll = UIRectCornerAllCorners,
};

@interface UIView (DBCorner)

- (void)db_roundingCornerWithRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor;

- (void)db_roundingCornerWithRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth;

- (void)db_roundingCorner:(DBRoundCorner)roundCorner radius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth rect:(CGRect)realRect;

@end
