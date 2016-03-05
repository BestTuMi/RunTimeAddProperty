//
//  ViewController.m
//  RunTimeAddProperty
//
//  Created by 王晓东 on 16/3/4.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Style.h"
#import "UIAlertView+Expand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *buttonRounded = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonRounded.frame = CGRectMake(30, 50, 200, 40);
    buttonRounded.backgroundColor = [UIColor redColor];
    [buttonRounded addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    buttonRounded.style = ButtonStyleRounded;
    [self.view addSubview:buttonRounded];
    
    
    UIButton *buttonNormal = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonNormal.backgroundColor = [UIColor blueColor];
    buttonNormal.frame = CGRectMake(30, 100, 200, 40);
     [buttonNormal addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    buttonNormal.style = ButtonStyleNormal;
    [self.view addSubview:buttonNormal];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)clickAction:(UIButton *)sender {
NSString *message = (sender.style == ButtonStyleRounded ? @"ButtonStyleRounded"  : @"ButtonStyleNormal");
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"按钮的类型提示" message:message delegate:nil
                                              cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alertView showAlertViewWithCompleteBlock:^(NSInteger buttonIndex, UIAlertView *alertView) {
        if (buttonIndex == 0) {
            NSLog(@"点击了取消按钮");
            
        } else if (buttonIndex == 1) {
            NSLog(@"点击了确定按钮");
            
        }
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
