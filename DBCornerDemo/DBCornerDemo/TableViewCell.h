//
//  TableViewCell.h
//  DBCornerDemo
//
//  Created by Xu Mengtong on 10/1/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photo1;
@property (weak, nonatomic) IBOutlet UIImageView *photo2;
@property (weak, nonatomic) IBOutlet UIImageView *photo3;
@property (weak, nonatomic) IBOutlet UIImageView *photo4;

@property (nonatomic ,assign) BOOL isSystemFunction;

@property (nonatomic ,assign) BOOL hasConfig;

@end
