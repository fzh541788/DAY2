//
//  ViewController.m
//  7.UIWindow
//
//  Created by young_jerry on 2020/7/13.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"
@interface ViewController ()

@end

@implementation ViewController

//屏幕点击时调用
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewC02* vc = [[ViewC02 alloc]init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    //显示一个新的视图控制器到屏幕上
    //p1:新的视图控制器对象
    //p2:是否使用动画切换效果
    //p3：切换结束后功能调用，不需要直接传nil值即可
    [self presentViewController:vc animated:YES completion:nil];
    
}

//第一次程序加载视图时调用(只有第一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad!第一次加载视图！");
}

//当视图控制器的视图即将显示时，调用此函数（每一次视图显示都要被调用
//视图分为：1.显示前（不显示），2.正在处于显示状态 3.已经被隐藏
//参数：表示是否用动画切花后消失
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear,视图即将显示！");
}
//当视图即将消失时，调用此函数
//参数：表示是否用动画切花后消失
//当前的状态：视图还是显示在屏幕上的
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"视图即将消失！");
}
//视图已经到屏幕后的瞬间调用此函数
//参数：表示是否用动画切换显示的
//当前状态已经显示到屏幕上了
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"视图已经显示！");
}

//当前视图已经消失从屏幕上
//参数：表示是否用动画切换显示的
//当前状态当前视图控制视图已经消失从屏幕上
-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"视图已经消失！");
}

@end
