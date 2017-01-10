//
//  ViewController.m
//  DBCornerDemo
//
//  Created by Xu Mengtong on 10/1/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import "ViewController.h"
#import "UIView+DBCorner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIView *testUI1 = UIView.new;
    testUI1.frame = CGRectMake(100, 100, 200, 200);
    testUI1.backgroundColor = UIColor.grayColor;
    [self.view addSubview:testUI1];
    
    UIView *testUI2 = UIView.new;
    testUI2.frame = CGRectMake(100, 400, 200, 200);
    testUI2.backgroundColor = UIColor.grayColor;
    [self.view addSubview:testUI2];
    
    [testUI1 db_roundingCornerWithRadius:20 backgroundColor:UIColor.whiteColor borderColor:UIColor.purpleColor borderWidth:2];
    
    [testUI2 db_roundingCorner:DBRoundCornerBottomLeft|DBRoundCornerTopRight radius:20 backgroundColor:UIColor.whiteColor borderColor:UIColor.purpleColor borderWidth:2 rect:CGRectNull];
    
    [self.view db_roundingCorner:DBRoundCornerTopLeft|DBRoundCornerBottomRight radius:80 backgroundColor:[UIColor redColor] borderColor:[UIColor greenColor] borderWidth:1 rect:CGRectNull];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
