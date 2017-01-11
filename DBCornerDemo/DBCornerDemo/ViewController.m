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
    
    CGFloat cellWidth = self.view.bounds.size.width/5;
    
    NSMutableArray *testUIs = [@[] mutableCopy];
    for (int i=0; i<(4*6); i++) {
        UIView *testUI = UIView.new;
        testUI.frame = CGRectMake(20+(cellWidth+10)*(i%4), 60+(cellWidth+10)*((i)/4), cellWidth, cellWidth);
        [self.view addSubview:testUI];
        
        [testUIs addObject:testUI];
    }
    
    [testUIs enumerateObjectsUsingBlock:^(UIView *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        obj.backgroundColor = arcrandomColor();
        
        [obj db_roundingCorner:arcrandomCorners() radius:(arc4random()%20+5) backgroundColor:self.view.backgroundColor borderColor:arcrandomColor() borderWidth:1 rect:CGRectNull];
        
    }];
    
}

NSUInteger arcrandomCorner() {
    return 1 << arc4random()%4;
}
NSUInteger arcrandomCorners() {
    return arcrandomCorner()|arcrandomCorner()|arcrandomCorner()|arcrandomCorner();
}
UIColor* arcrandomColor() {
    return [UIColor colorWithRed:arc4random()%256*1.0/255 green:arc4random()%256*1.0/255 blue:arc4random()%256*1.0/255 alpha:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
