//
//  ModelView.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelView.h"

@interface ModelView ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

@end

@implementation ModelView

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, frame.size.width, 40)];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
        
        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, frame.size.width, 40)];
        _subTitleLabel.font = [UIFont systemFontOfSize:15.0f];
        _subTitleLabel.textAlignment = NSTextAlignmentCenter;
        _subTitleLabel.textColor = [UIColor lightGrayColor];
        [self addSubview:_subTitleLabel];
    }
    return self;
}

- (void)setModelProtocol:(id<ViewModelProtocol>)modelProtocol
{
    self.titleLabel.text = [modelProtocol modelTitle];
    self.subTitleLabel.text = [modelProtocol modelSubTitle];
}

@end
