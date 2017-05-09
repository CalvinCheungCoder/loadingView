//
//  UIView+DHLoadingView.h
//  loadingView
//
//  Created by 张丁豪 on 2017/5/9.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DHLoadingView)

/**
 *  显示加载视图
 *
 *  @param text 加载文字
 */
-(void)showLoadingViewWithText:(NSString *)text;

/**
 *  加载视图消失
 */
-(void)dismissLoadingView;

@end
