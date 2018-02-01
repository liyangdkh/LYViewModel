//
//  ViewController.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ViewController.h"
#import "ModelAViewController.h"
#import "ModelBViewController.h"
#import "ModelCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"VC";
    
    UIButton *btnA = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnA setFrame:CGRectMake(0, 0, 100, 40)];
    btnA.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, 100);
    [btnA setTitle:@"Test Model A" forState:UIControlStateNormal];
    [btnA addTarget:self action:@selector(btnASelector) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnA];
    
    UIButton *btnB = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnB setFrame:CGRectMake(0, 0, 100, 40)];
    btnB.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, 140);
    [btnB setTitle:@"Test Model B" forState:UIControlStateNormal];
    [btnB addTarget:self action:@selector(btnBSelector) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnB];
    
    UIButton *btnC = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnC setFrame:CGRectMake(0, 100, 100, 40)];
    btnC.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, 180);
    [btnC setTitle:@"Test Model C" forState:UIControlStateNormal];
    [btnC addTarget:self action:@selector(btnCSelector) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnC];
}

- (void)btnASelector
{
    ModelAViewController *vc = [ModelAViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btnBSelector
{
    ModelBViewController *vc = [ModelBViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btnCSelector
{
    ModelCViewController *vc = [ModelCViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
