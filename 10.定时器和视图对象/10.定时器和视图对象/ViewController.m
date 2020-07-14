//
//  ViewController.m
//  10.定时器和视图对象
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//synthesize 添加别名 属性和成员变量的同步
@synthesize timerView = _timerView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //启动定时器按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    //停止定时器按钮
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnStop];
    
    //视图的移动
    UIView* view = [[UIView alloc]init];
    
    view.frame = CGRectMake(0, 0, 80, 80);
    
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    //标签值 通过父亲视图对象以及view的标签值可以获得相应的视图对象
    view.tag = 101;
    
}
-(void)pressStart{
    //nstimer的类方法创建一个定时器并启动这个定时器
    //p1:每隔多长时间调用定时器函数，以秒为单位
    //p2:表示实现定时器函数的对象（指针）
    //p3:定时器函数对象
    //p4:可以传入定时器函数中的一个参数，无参数传入nil
    //p5:定时器是否重复操作，yes重复，no只完成一次函数调用
    //返回值为一个新建好的定时器对象
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}
//定时器函数（传参失败）
-(void)updateTimer{
    NSLog(@"test!!!");
    UIView* view = [self.view viewWithTag:101];
    //每次通过定时器函数的调用，更新视图的位置，不断调用不断更新，达到动态移动的效果
    view.frame = CGRectMake(view.frame.origin.x+5, view.frame.origin.y+5, 80, 80);
}
//停止定时器
-(void)pressStop{
    if(_timerView != nil){
    [_timerView invalidate];
    }
}
@end
