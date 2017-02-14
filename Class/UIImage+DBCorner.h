//
//  UIImage+DBCorner.h
//  DBCornerDemo
//
//  Created by Xu Mengtong on 14/2/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DBCorner)

- (UIImage *)db_roundingCorner:(UIRectCorner)roundCorner radius:(CGFloat)radius size:(CGSize)size backgroundColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth withContentMode:(UIViewContentMode)contentMode;

@end
