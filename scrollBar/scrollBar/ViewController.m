//
//  ViewController.m
//  scrollBar
//
//  Created by CHENZEQIANG on 2016/10/12.
//  Copyright © 2016年 CHENZEQIANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollBarCenterX;
@property (weak, nonatomic) IBOutlet UILabel *scrollBarLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置滚动条开始滚动的起点
    self.scrollBarCenterX.constant = self.view.bounds.size.width;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)movingButton:(id)sender {
    
    //使用类方法设置动画
    [UIView animateWithDuration:4 animations:^{
        
        //设置滚动条结束滚动的终点
        self.scrollBarCenterX.constant = -self.view.bounds.size.width;
        
        //设置重复执行动画的次数，如果没有设置此项，动画只执行一次
        [UIView setAnimationRepeatCount:999];
        
        //设置动画是否往返，YES表示执行往返
        [UIView setAnimationRepeatAutoreverses:YES];
        
        //要想使动画生效，必须执行此项，由此我这了需要更改约束大小
        [self.view layoutIfNeeded];
    }];
    
}

@end
