//
//  TableViewCell.m
//  DBCornerDemo
//
//  Created by Xu Mengtong on 10/1/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import "TableViewCell.h"
#import "UIView+DBCorner.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setIsSystemFunction:(BOOL)isSystemFunction{
    _isSystemFunction = isSystemFunction;
    
    if (!_hasConfig) {
        _hasConfig = YES;
    } else {
        return ;
    }
    
    if (_isSystemFunction) {
        self.photo1.layer.cornerRadius = 8;
        self.photo1.clipsToBounds = YES;
        self.photo1.layer.borderWidth = 1;
        self.photo1.layer.borderColor = UIColor.blackColor.CGColor;
        
        self.photo2.layer.cornerRadius = 8;
        self.photo2.clipsToBounds = YES;
        self.photo2.layer.borderWidth = 1;
        self.photo2.layer.borderColor = UIColor.blackColor.CGColor;
        
        self.photo3.layer.cornerRadius = 8;
        self.photo3.clipsToBounds = YES;
        self.photo3.layer.borderWidth = 1;
        self.photo3.layer.borderColor = UIColor.blackColor.CGColor;
        
        self.photo4.layer.cornerRadius = 8;
        self.photo4.clipsToBounds = YES;
        self.photo4.layer.borderWidth = 1;
        self.photo4.layer.borderColor = UIColor.blackColor.CGColor;
    } else {
        [self.photo1 db_roundingCornerWithRadius:8 backgroundColor:UIColor.whiteColor borderColor:UIColor.blackColor];
        [self.photo2 db_roundingCornerWithRadius:8 backgroundColor:UIColor.whiteColor borderColor:UIColor.blackColor];
        [self.photo3 db_roundingCornerWithRadius:8 backgroundColor:UIColor.whiteColor borderColor:UIColor.blackColor];
        [self.photo4 db_roundingCornerWithRadius:8 backgroundColor:UIColor.whiteColor borderColor:UIColor.blackColor];
        
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
