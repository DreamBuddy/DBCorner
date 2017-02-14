//
//  MasonryViewController.m
//  DBCornerDemo
//
//  Created by Xu Mengtong on 14/2/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import "MasonryViewController.h"
#import <Masonry.h>

#import "UIView+DBCorner.h"

@interface MasonryViewController ()

@end

@implementation MasonryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIView *roundView = UIView.new;
    [self.view addSubview:roundView];
    [roundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 80));
    }];
    roundView.backgroundColor = UIColor.redColor;
    
    /* 因为自动布局 无法立即获取控件的大小 所以需要手动设置下 */
    [roundView db_roundingCorner:UIRectCornerAllCorners radius:15 backgroundColor:self.view.backgroundColor borderColor:UIColor.clearColor borderWidth:0 rect:CGRectMake(0, 0, 100, 80)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
