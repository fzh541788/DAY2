//
//  ViewController.m
//  16.登陆界面
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
    
    //用户名
    _ibUserName = [[UILabel alloc]init];
    _ibUserName.frame = CGRectMake(20, 60, 80, 40);
    _ibUserName.text = @"用户名";
    _ibUserName.font = [UIFont systemFontOfSize:15];
    //排版
    _ibUserName.textAlignment = NSTextAlignmentLeft;
    
    //密码提示
    _ibPassword = [[UILabel alloc]init];
    _ibPassword.frame = CGRectMake(20, 140, 80, 40);
    _ibPassword.text = @"密码";
    _ibPassword.font = [UIFont systemFontOfSize:15];
    _ibPassword.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    _tfUserName = [[UITextField alloc]init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassword = [[UITextField alloc]init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    //登陆和注册按钮
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle:@"登陆" forState:UIControlStateNormal];
    
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:_ibUserName];
    [self.view addSubview:_ibPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}

-(void)pressLogin{
    NSString* strName = @"fzh";
    NSString* strPass = @"123456";
    NSString* strTexName = _tfUserName.text;
    NSString* strTexPass = _tfPassword.text;
    if([strName isEqualToString:strTexName] && [strPass isEqualToString:strTexPass]){
        NSLog(@"密码正确！");
        UIAlertController* p = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* backAction = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDefault handler:nil];
        [p addAction:backAction];
        [self presentViewController:p animated:YES completion:nil];
        
    }
    else{
        NSLog(@"密码错误！");
        UIAlertController* p = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证失败" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* backAction = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDefault handler:nil];
        [p addAction:backAction];
        [self presentViewController:p animated:YES completion:nil];
    }
        
}

-(void)pressRegister{
    
}
@end
