//
//  ViewController.m
//  多边形运动
//
//  Created by Burt on 2018/3/6.
//  Copyright © 2018年 com.uqiauto. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController ()
{
    DrawView * pv;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    pv=[[DrawView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 400)];
    [self.view addSubview:pv];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
