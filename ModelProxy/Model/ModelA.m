//
//  ModelA.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelA.h"

@implementation ModelA

- (instancetype)init
{
    if(self = [super init])
    {
        self.title = @"";
        self.subTitle = @"";
    }
    return self;
}

- (NSString *)modelTitle
{
    return self.title;
}

- (NSString *)modelSubTitle
{
    return self.subTitle;
}

@end
