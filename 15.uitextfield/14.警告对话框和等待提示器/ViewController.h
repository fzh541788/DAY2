//
//  ViewController.h
//  14.警告对话框和等待提示器
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    //文本输入区域 例如用户名 密码等需要输入文本文字的内容区域 只能输入单行文字
    
    UITextField* _textField;
}
@property(retain,nonatomic)UITextField* textField;
@end

