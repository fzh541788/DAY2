//
//  ViewController.h
//  18.滚动视图的高级功能
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//当前视图控制器要实现协议uiscrollview的协议函数
<UIScrollViewDelegate>{
    //定义一个滚动视图成员变量
    UIScrollView* _scrollView;
}

@end

