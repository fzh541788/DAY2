//
//  SuperView.h
//  26.手动布局子视图
//
//  Created by young_jerry on 2020/7/14.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView{
       UIView* _view01;
       UIView* _view02;
       UIView* _view03;
       UIView* _view04;
       UIView* _view05;
}
-(void) createSubViews;
@end

NS_ASSUME_NONNULL_END
