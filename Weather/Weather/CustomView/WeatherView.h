//
//  WeatherView.h
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentConditions.h"
#import "CurrentWeatherData.h"

@interface WeatherView : UIView
/**
 *  天气数据
 */
@property(nonatomic, strong) CurrentConditions  *weatherConditions;
@property(nonatomic, strong) CurrentWeatherData *weatherData;

/**
 *  动画
 */
- (void)show;
- (void)hide;

/**
 *  创建view
 */
- (void)buildView;

@end
