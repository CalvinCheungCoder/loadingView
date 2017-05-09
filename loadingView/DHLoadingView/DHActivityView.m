//
//  DHActivityView.m
//  loadingView
//
//  Created by 张丁豪 on 2017/5/9.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "DHActivityView.h"

static DHActivityView *_activityView = nil;

@implementation DHActivityView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (DHActivityView *)shareActivityView{
    if (!_activityView) {
        _activityView = [[DHActivityView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    }
    return _activityView;
}

@end
