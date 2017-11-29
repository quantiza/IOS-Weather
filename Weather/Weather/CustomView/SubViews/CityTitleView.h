//
//  CityTitleView.h
//  Weather
//
//  Created by LongYang on 2017/11/29.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityTitleView : UIView

@property (nonatomic, copy) NSString        *cityName;
@property (nonatomic, copy) NSString        *cityCode;
@property (nonatomic, copy) NSString        *weatherDescription;
@property (nonatomic, copy) NSString        *baseStation;
@property (nonatomic, copy) NSString        *updateYear;
@property (nonatomic, copy) NSString        *updateHour;
@property (nonatomic, assign) NSTimeInterval  utcSec;
@property (nonatomic, strong) NSNumber      *weatherNumber;

- (void)show;

- (void)hide;

@end
