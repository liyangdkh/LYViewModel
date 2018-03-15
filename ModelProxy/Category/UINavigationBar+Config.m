//
//  UINavigationBar+Config.m
//  ModelProxy
//
//  Created by liyang on 2018/3/14.
//  Copyright © 2018年 dashang. All rights reserved.
//

#import "UINavigationBar+Config.h"
#import <objc/runtime.h>

@implementation UINavigationBar (Config)

- (UIImage *)navBackImage {
    return objc_getAssociatedObject(self, @"navBackImage");
}

- (void)setNavBackImage:(UIImage *)navBackImage {
    objc_setAssociatedObject(self, @"navBackImage", navBackImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setBarBtns:(NSArray *)btns {
    
}

- (void)setBackgroundViewColor:(UIColor *)color {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, -20, self.bounds.size.width, 64)];
    view.backgroundColor = color;
    [self setValue:view forKey:@"backgroundView"];
}

- (void)setBackgoundViewAlpha:(CGFloat)alpha {
    UIView *backgoundView = [self valueForKey:@"backgroundView"];
    backgoundView.alpha = alpha;
}

- (void)resetBackgroundStyle {
    [self setBackgoundViewAlpha: 1.0f];
    self.barStyle = UIBarStyleDefault;
}

- (void)setBackgroundViewSubViewsAlpha:(CGFloat)alpha {
    UIView *backgoundView = [self valueForKey:@"backgroundView"];
    for (UIView *view in backgoundView.subviews) {
        view.alpha = alpha;
    }
}


@end
