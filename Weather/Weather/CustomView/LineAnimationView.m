//
//  LineAnimationView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LineAnimationView.h"

@implementation LineAnimationView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        self.alpha                  = 0.;
        self.maxAlpha               = 0.1;
        self.fadeToShowDuration     = 1.75;
        self.fadeToHideDuration     = 0.75;
    }
    
    return self;
}

- (void)show {
    
}

- (void)hide {
    
}

@end
