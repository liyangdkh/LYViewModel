//
//  ModelB.h
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewModelProtocol.h"

@interface ModelB : NSObject <ViewModelProtocol>

@property (nonatomic, strong) NSString *modelBTitle;
@property (nonatomic, strong) NSString *modelBSubTitle;

@end
