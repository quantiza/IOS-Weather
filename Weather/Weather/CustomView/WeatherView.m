//
//  WeatherView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "WeatherView.h"
#import "HumidityView.h"
#import "WindSpeedView.h"
#import "MaxTempView.h"
#import "SunInfoView.h"
#import "TemperatureView.h"
#import "WeatherIconView.h"
#import "LeftToRightView.h"
#import "UpToDownView.h"
#import "CityTitleView.h"

@interface WeatherView ()<UITableViewDelegate>

@property(nonatomic, strong) UITableView        *tableView;

@property (nonatomic, strong) HumidityView       *humidityView;
@property (nonatomic, strong) WindSpeedView      *windSpeedView;
@property (nonatomic, strong) MaxTempView        *maxTempView;
@property (nonatomic, strong) SunInfoView        *sunInfoView;
@property (nonatomic, strong) TemperatureView    *temperatureView;
@property (nonatomic, strong) WeatherIconView    *weatherIconView;
@property (nonatomic, strong) CityTitleView      *cityTitleView;

@property (nonatomic, strong) LeftToRightView   *grayLine1;
@property (nonatomic, strong) LeftToRightView   *grayLine2;
@property (nonatomic, strong) LeftToRightView   *grayLine3;
@property (nonatomic, strong) LeftToRightView   *grayLine4;
@property (nonatomic, strong) UpToDownView      *vLine;

@end

@implementation WeatherView

- (void)buildView {
    
    _tableView                  = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    _tableView.backgroundColor  = [UIColor clearColor];
    _tableView.delegate         = self;
    _tableView.separatorStyle   = UITableViewCellSeparatorStyleNone;
    [self addSubview:_tableView];
    
    /**
     *  显示控件
     */
    _weatherIconView = [[WeatherIconView alloc] initWithFrame:CGRectMake(0, Height - 1.5 * Width, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_weatherIconView];
    
    _temperatureView = [[TemperatureView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - 1.5 * Width, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_temperatureView];
    
    _humidityView = [[HumidityView alloc] initWithFrame:CGRectMake(0, Height - Width, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_humidityView];
    
    _sunInfoView = [[SunInfoView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - Width, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_sunInfoView];
    
    _maxTempView = [[MaxTempView alloc] initWithFrame:CGRectMake(0, Height - Width / 2.0, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_maxTempView];
    
    _windSpeedView = [[WindSpeedView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - Width / 2.0, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_windSpeedView];
    
    /**
     *  创建线条
     */
    _grayLine1  = [[LeftToRightView alloc] initWithFrame:CGRectMake(0, Height - 1.5 * Width, Width, 1)];
    [_tableView addSubview:_grayLine1];
    
    _grayLine2  = [[LeftToRightView alloc] initWithFrame:CGRectMake(0, Height - Width, Width, 1)];
    [_tableView addSubview:_grayLine2];
    
    _grayLine3  = [[LeftToRightView alloc] initWithFrame:CGRectMake(0, Height - Width / 2.0, Width, 1)];
    [_tableView addSubview:_grayLine3];
    
    _grayLine4  = [[LeftToRightView alloc] initWithFrame:CGRectMake(0, Height - 1, Width, 1)];
    [_tableView addSubview:_grayLine4];
    
    _vLine      = [[UpToDownView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - 1.5 * Width, 1, 1.5 * Width)];
    [_tableView addSubview:_vLine];
    
    _cityTitleView = [[CityTitleView alloc] initWithFrame:CGRectMake(0, 0, Width, Height - 1.5 * Width)];
    [_tableView addSubview:_cityTitleView];
}

- (void)show {
    
    [_grayLine1 show];
    [_grayLine2 show];
    [_grayLine3 show];
    [_grayLine4 show];
    [_vLine show];
    [_cityTitleView show];
}

@end












