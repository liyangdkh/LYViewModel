//
//  UINavigationBar+Config.h
//  ModelProxy
//
//  Created by liyang on 2018/3/14.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (Config)

@property (nonatomic, strong) UIImage *navBackImage;

- (void)setBarBtns:(NSArray *)btns;

- (void)setBackgroundViewColor:(UIColor *)color;

- (void)setBackgoundViewAlpha:(CGFloat)alpha;

- (void)resetBackgroundStyle;

- (void)setBackgroundViewSubViewsAlpha:(CGFloat)alpha;

@end
