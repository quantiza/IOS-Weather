//
//  WeatherIconView.h
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherIconView : UIView

/**
 *  天气文本
 */
@property (nonatomic, strong) NSNumber  *weatherNumber;

- (void)show;
- (void)hide;

@end
