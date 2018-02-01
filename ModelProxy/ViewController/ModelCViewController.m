//
//  ModelCViewController.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelCViewController.h"
#import "ModelView.h"
#import "ModelC.h"

@interface ModelCViewController ()

@property (nonatomic, strong) ModelView *modelView;

@end

@implementation ModelCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"TestModelC";
    
    ModelC *modelC = [[ModelC alloc] init];
    modelC.modelCTitle = @"ModelC Title";
    modelC.modelCSubTitle = @"ModelC SubTitle";
    
    _modelView = [[ModelView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _modelView.modelProtocol = modelC;
    [self.view addSubview:_modelView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

@end
