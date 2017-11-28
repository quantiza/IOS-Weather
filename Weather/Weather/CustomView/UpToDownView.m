//
//  UpToDownView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "UpToDownView.h"

@implementation UpToDownView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        CGFloat x      = frame.origin.x;
        CGFloat y      = frame.origin.y;
        CGFloat height = frame.size.height;
        CGFloat width  = frame.size.width;
        
        self.startFrame = CGRectMake(x, y, width, 0);
        self.midFrame   = CGRectMake(x, y, width, height);
        self.endFrame   = CGRectMake(x, y + height, width, 0);
        
        self.frame      = self.startFrame;
    }
    
    return self;
}

@end
