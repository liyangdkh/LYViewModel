//
//  ModelC.m
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "ModelC.h"

@implementation ModelC

- (instancetype)init
{
    if(self = [super init])
    {
        self.modelCTitle = @"";
        self.modelCSubTitle = @"";
    }
    return self;
}

- (NSString *)modelTitle
{
    return self.modelCTitle;
}

- (NSString *)modelSubTitle
{
    return self.modelCSubTitle;
}

@end
