//
//  NavBarTestViewController.m
//  ModelProxy
//
//  Created by liyang on 2018/3/14.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "NavBarTestViewController.h"
#import "UINavigationBar+Config.h"

@interface NavBarTestViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation NavBarTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Nav Bar Test";
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setLeftBarButton];
    [self setupTableView];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundViewColor:[UIColor blueColor]];
}

- (void)setupTableView {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.estimatedRowHeight = 0;
    _tableView.rowHeight = 60.0f;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"testCell"];
    [self.view addSubview:_tableView];
}

- (void)setLeftBarButton {
    UIBarButtonItem *leftBarItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarItemSel)];
    self.navigationItem.leftBarButtonItem = leftBarItem;
}

- (void)leftBarItemSel {
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld row", indexPath.row + 1];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY > 50) {
        CGFloat alpha = MIN(1, 1 - ((50 + 64 - offsetY) / 64));
        [self.navigationController.navigationBar setBackgoundViewAlpha:alpha];
    } else {
        [self.navigationController.navigationBar setBackgoundViewAlpha:0];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
