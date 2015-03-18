//
//  ViewController.m
//  LZButtonDemo
//
//  Created by admin on 15/3/18.
//  Copyright (c) 2015年 cn.lztech  合肥联正电子科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"
#define DeviceHeight [UIScreen mainScreen].bounds.size.height
#define DeviceWidth  [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    MyButton *myButton=[[MyButton alloc] initWithFrame:CGRectMake((DeviceWidth-200)/2,(DeviceHeight-200)/2,200,200)];
    [myButton setTitle:@"范冰冰" forState:UIControlStateNormal];
    [myButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [myButton setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [myButton setImage:[UIImage imageNamed:@"fbb.jpg"] forState:UIControlStateNormal];
    [self.view addSubview:myButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
