//
//  ViewController.m
//  17.uiscrollview基础
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //定义并且创建一个滚动视图
    //可以对视图内容进行滚屏查看功能
    UIScrollView* sv = [[UIScrollView alloc]init];
    
    //设置滚动视图的位置，使用矩形来定位视图位置
    sv.frame = CGRectMake(0, 0, 320, 568);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    
    //设置画布的大小，画布显示在滚动视图的内部，一般大于frame的大小
    sv.contentSize = CGSizeMake(375*3, 568);
    
    //是否可以边缘弹动效果
    sv.bounces = YES;
    
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    
    //开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    
    //是否实现纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    
    sv.backgroundColor = [UIColor orangeColor];
    
    for(int i = 0; i < 3; i++){
        NSString* strName = [NSString stringWithFormat:@"btn0%d.jpg", i+1];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iview = [[UIImageView alloc]initWithImage:image];
        
        iview.frame = CGRectMake(320*i, 0, 320, 576);
        
        [sv addSubview:iview];
    }
    
    [self.view addSubview:sv];
}


@end
