//
//  ViewController.m
//  18.滚动视图的高级功能
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//
//CGRectMake(origin.x，origin.y，size.width. Size.height)在代码中定义矩形。
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //创建滚动视图
    _scrollView = [[UIScrollView alloc]init];
    
    _scrollView.frame = CGRectMake(10, 50, 370, 680);
    
    //取消弹动效果
    _scrollView.bounces = NO;
    
    //是否允许通过点击屏幕让滚动视图响应事件 yes可以
//    _scrollView.userInteractionEnabled = NO;
    
    //设置画布大小，纵向效果
    _scrollView.contentSize = CGSizeMake(300, 400*9);
    
    for(int i = 0; i < 3; i++){
        //生成图片名称
        NSString* strName = [NSString stringWithFormat:@"btn0%d.jpg",i+1 ];
        UIImage* image = [UIImage imageNamed:strName];
        
        //创建图像视图对象
        UIImageView* iView = [[UIImageView alloc]init];
        
        //图像赋值
        iView.image = image;
        
        //设置图像视图在滚动视图画布中的位置
        iView.frame = CGRectMake(0, 400*i, 300, 400);
        
        [_scrollView addSubview:iView];
    }
    [self.view addSubview:_scrollView];
    
    //取消按页滚动效果
    _scrollView.pagingEnabled = NO;
    
    //滚动视图画布的偏移位置 功能：决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    //将当前视图做为代理对象
    _scrollView.delegate = self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //_scrollView.contentOffset = CGPointMake(0, 0);
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
}
//当滚动视图移动时，只要offset坐标发生变化，都会调用此函数   参数：调用此协议的滚动视图对象
//结果是左上角坐标离原点的距离 可以用此函数来监控滚动视图的位置
-(void) scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"y = %f",scrollView.contentOffset.y);
}

//当滚动视图结束时调用此函数
-(void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"Did End Drag!");
}

//滚动视图即将开始被拖动时
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"will begin drag!");
}

//视图即将结束调用时
-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"will end drag!");
}

//视图即将减速时
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"will begin deceleratg!");
}

//视图停止的瞬间
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"视图停止移动！");
}
@end
