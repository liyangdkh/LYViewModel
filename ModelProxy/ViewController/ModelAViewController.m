//
//  ModelAViewController.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelAViewController.h"
#import "ModelView.h"
#import "ModelA.h"

@interface ModelAViewController ()

@property (nonatomic, strong) ModelView *modelView;

@end

@implementation ModelAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"TestModelA";
    
    ModelA *modelA = [[ModelA alloc] init];
    modelA.title = @"ModelA Title";
    modelA.subTitle = @"ModelA SubTitle";
    
    _modelView = [[ModelView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _modelView.modelProtocol = modelA;
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
