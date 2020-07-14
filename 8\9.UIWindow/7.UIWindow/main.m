//
//  main.m
//  7.UIWindow
//
//  Created by young_jerry on 2020/7/13.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
//    uikit框架结构的启动函数
//    参数一：argc启动时带有参数的个数
//    参数二：argc，参数列表
//    参数三：要求传入一个主框架类类名，如果参数为nil，系统会自动用默认的框架类做为主框架类名
//    参数四：主框架类的代理类对象名字 要用字符串
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
