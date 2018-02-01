//
//  ModelC.h
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewModelProtocol.h"

@interface ModelC : NSObject <ViewModelProtocol>

@property (nonatomic, strong) NSString *modelCTitle;
@property (nonatomic, strong) NSString *modelCSubTitle;

@end
