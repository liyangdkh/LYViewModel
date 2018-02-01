//
//  ModelB.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelB.h"

@implementation ModelB

- (instancetype)init
{
    if(self = [super init])
    {
        self.modelBTitle = @"";
        self.modelBSubTitle = @"";
    }
    return self;
}

- (NSString *)modelTitle
{
    return self.modelBTitle;
}

- (NSString *)modelSubTitle
{
    return self.modelBSubTitle;
}

@end
