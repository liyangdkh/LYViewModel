//
//  ModelView.h
//  ModelProxy
//
//  Created by liyang on 2018/2/1.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewModelProtocol.h"

@interface ModelView : UIView

@property (nonatomic, weak) id<ViewModelProtocol> modelProtocol;

@end
