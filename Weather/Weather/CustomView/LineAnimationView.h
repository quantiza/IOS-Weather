//
//  LineAnimationView.h
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LineAnimationView : UIView

@property (nonatomic) CGFloat maxAlpha;
@property (nonatomic) CGFloat fadeToShowDuration;
@property (nonatomic) CGFloat fadeToHideDuration;

@property (nonatomic) CGRect  startFrame;
@property (nonatomic) CGRect  midFrame;
@property (nonatomic) CGRect  endFrame;

- (void)show;
- (void)hide;

@end
