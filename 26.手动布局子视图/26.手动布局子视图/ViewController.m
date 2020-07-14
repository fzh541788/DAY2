//
//  ViewController.m
//  26.手动布局子视图
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    创建父亲视图
    SuperView* sView = [[SuperView alloc]init];
    

    sView.frame = CGRectMake(20, 20, 180, 200);
    
        [sView createSubViews];
    
    sView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:sView];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(240, 480, 80, 40);
    
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn02.frame = CGRectMake(240, 520, 80, 40);
    
    [btn02 setTitle:@"缩小" forState:UIControlStateNormal];
    
    [btn02 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
}

//放大父亲视图
-(void)pressLarge{
    SuperView* sView = [(SuperView*)self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 300, 480);
    
    [UIView commitAnimations];
}

//缩小父亲视图
-(void)pressSmall{
    SuperView* sView = [(SuperView*)self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [UIView commitAnimations];
}
@end
