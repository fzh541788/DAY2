//
//  ViewController.h
//  16.登陆界面
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //用户名提示label
    UILabel* _ibUserName;
    //密码提示label
    UILabel*  _ibPassword;
    //用户输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassword;
    //登陆按钮
    UIButton* _btLogin;
    //注册按钮
    UIButton* _btRegister;
}

@end

