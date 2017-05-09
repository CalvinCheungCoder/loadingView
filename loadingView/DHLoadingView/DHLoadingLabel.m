//
//  DHLoadingLabel.m
//  loadingView
//
//  Created by 张丁豪 on 2017/5/9.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "DHLoadingLabel.h"

static DHLoadingLabel *_loadingLabel = nil;

@implementation DHLoadingLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (DHLoadingLabel *)shareLoadingLabel{
    
    if (!_loadingLabel) {
        _loadingLabel = [[DHLoadingLabel alloc] init];
        _loadingLabel.font = [UIFont systemFontOfSize:14.0];
        _loadingLabel.textColor = [UIColor grayColor];
        _loadingLabel.backgroundColor = [UIColor clearColor];
    }
    return _loadingLabel;
}

@end
