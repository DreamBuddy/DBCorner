//
//  ImageViewController.m
//  DBCornerDemo
//
//  Created by Xu Mengtong on 14/2/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import "ImageViewController.h"
#import <Masonry.h>

#import "UIImage+DBCorner.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIImageView *roundView = UIImageView.new;
    [self.view addSubview:roundView];
    [roundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    
    UIImage *image = [UIImage imageNamed:@"touxiang"];
    roundView.image = [image db_roundingCorner:UIRectCornerAllCorners radius:20 size:CGSizeMake(200, 200) backgroundColor:UIColor.clearColor borderColor:UIColor.redColor borderWidth:3 withContentMode:UIViewContentModeScaleAspectFit];
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
