//
//  UIButton+Stytle.m
//  RunTimeAddProperty
//
//  Created by 王晓东 on 16/3/4.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import "UIButton+Style.h"
#import <objc/runtime.h>
const char *key;

@implementation UIButton (Style)
- (ButtonStyle)style {
    NSNumber *style = objc_getAssociatedObject(self, &key);
    return (ButtonStyle)[style integerValue];
    
}
- (void)setStyle:(ButtonStyle)style {
    if (style == ButtonStyleRounded) {
        self.layer.cornerRadius = 8;
        self.layer.masksToBounds = YES;
    }
    objc_setAssociatedObject(self, &key, @(style), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
