//
//  LeftToRightView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LeftToRightView.h"

@implementation LeftToRightView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        CGFloat x       = frame.origin.x;
        CGFloat y       = frame.origin.y;
        CGFloat width   = frame.size.width;
        CGFloat height  = frame.size.height;
    
        self.startFrame = CGRectMake(x, y, 0, height);
        self.midFrame   = CGRectMake(x, y, width, height);
        self.endFrame   = CGRectMake(x + width, y, 0, height);
        
        self.frame      = self.startFrame;
    }
    
    return self;
}

- (void)show {
    
    [UIView animateWithDuration:self.fadeToShowDuration
                     animations:^{
                         self.alpha = self.maxAlpha;
                         self.frame = self.midFrame;
                     }];
}

- (void)hide {
    
    [UIView animateWithDuration:self.fadeToHideDuration
                     animations:^{
                         
                         self.alpha = 0.0;
                         self.frame = self.endFrame;
                         
                     } completion:^(BOOL finished) {
                         
                         self.alpha = 0.0;
                         self.frame = self.startFrame;
                     }];
}

@end
