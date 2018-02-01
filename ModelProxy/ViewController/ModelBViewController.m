//
//  ModelBViewController.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelBViewController.h"
#import "ModelView.h"
#import "ModelB.h"

@interface ModelBViewController ()

@property (nonatomic, strong) ModelView *modelView;

@end

@implementation ModelBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"TestModelB";
    
    ModelB *modelB = [[ModelB alloc] init];
    modelB.modelBTitle = @"ModelB Title";
    modelB.modelBSubTitle = @"ModelB SubTitle";
    
    _modelView = [[ModelView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _modelView.modelProtocol = modelB;
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
