//
//  UIButton+Stytle.h
//  RunTimeAddProperty
//
//  Created by 王晓东 on 16/3/4.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, ButtonStyle) {
    ButtonStyleRounded,
    ButtonStyleNormal
};

@interface UIButton (Style)
@property (assign, nonatomic) ButtonStyle style;

@end
