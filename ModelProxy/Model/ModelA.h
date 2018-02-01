//
//  ModelA.h
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewModelProtocol.h"

@interface ModelA : NSObject <ViewModelProtocol>

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subTitle;

@end
