//
//  ViewController.m
//  14.警告对话框和等待提示器
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个文本输入区对象
    self.textField = [[UITextField alloc]init];

    //设定文本输入区的位置
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    //设置内容文字
//    self.textField.text = @"用户名";
    
    //字体大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    //颜色
    self.textField.textColor = [UIColor blackColor];
    
    //设置边框风格
//    UITextBorderStyleLine 线框风格
//    UITextBorderStyleRoundedRect 圆角风格
//    UITextBorderStyleBezel bezel线框风格
//    UITextBorderStyleNone 无风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置虚拟键盘风格
    //namephonepad:字母和数字组合风格
    //numberpad:纯数字风格
    self.textField.keyboardType = UIKeyboardTypeDefault;

    //提示文字信息
    //当text属性为空，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名";
    
    //是否做为密码输入
    //yes:原点加密
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:self.textField];
    
    //设置代理对象
    self.textField.delegate = self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"开始编辑了！");
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    self.textField.text = @"";
    NSLog(@"编辑输入结束！");
}

//是否可以进行输入 yes可以 默认yes no不能输入文字
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

//是否可以结束输入 默认yes no不能结束输入文字
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}

//点击屏幕空白处收回键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.textField resignFirstResponder];
}

@end
