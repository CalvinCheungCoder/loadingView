//
//  UIView+DHLoadingView.m
//  loadingView
//
//  Created by 张丁豪 on 2017/5/9.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "UIView+DHLoadingView.h"
#import "DHLoadingLabel.h"
#import "DHActivityView.h"

#define WarmLabelWidth 60
#define WaemLabelHeight 20
#define ActivityViewWidth 85
#define SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width)
#define ActivityX ((SCREEN_WIDTH - ActivityViewWidth)/2) //UIActivityIndicatorViewX frame
#define WarmLabelX (ActivityX + 25) //label Frame

@implementation UIView (DHLoadingView)

-(void)initActivitytitle:(NSString *)title{
    
    CGFloat width = (title.length > 0) ? WarmLabelWidth/2 : 0;
    [DHActivityView shareActivityView].center = CGPointMake(CGRectGetMidX(self.frame) - width, CGRectGetMidY(self.frame));
    [[DHActivityView shareActivityView] startAnimating];
    [self addSubview:[DHActivityView shareActivityView]];
    
    [DHLoadingLabel shareLoadingLabel].frame = CGRectMake(WarmLabelX, (self.frame.size.height - WaemLabelHeight)/2, WarmLabelWidth, WaemLabelHeight);
    [DHLoadingLabel shareLoadingLabel].text = title;
    [DHLoadingLabel shareLoadingLabel].hidden = NO;
    [self addSubview:[DHLoadingLabel shareLoadingLabel]];
}

-(void)showLoadingViewWithText:(NSString *)text{
    
    self.backgroundColor = [UIColor colorWithRed:241/255.0 green:241/255.0 blue:241/255.0 alpha:1];
    [self initActivitytitle:text];
}

-(void)dismissLoadingView{
    [self stopAnimating];
}

-(void)stopAnimating{
    
    [DHLoadingLabel shareLoadingLabel].hidden = YES;
    [[DHActivityView shareActivityView] stopAnimating];
    [DHLoadingLabel shareLoadingLabel].text = nil;
}

@end
