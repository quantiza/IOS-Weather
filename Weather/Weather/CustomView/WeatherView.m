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

@interface WeatherView ()<UITableViewDelegate>

@property(nonatomic, strong) UITableView        *tableView;
@property(nonatomic, strong) HumidityView       *humidityView;
@property(nonatomic, strong) WindSpeedView      *windSpeedView;
@property(nonatomic, strong) MaxTempView        *maxTempView;
@property(nonatomic, strong) SunInfoView        *sunInfoView;
@property(nonatomic, strong) TemperatureView    *temperatureView;
@property(nonatomic, strong) WeatherIconView    *weatherIconView;

@end

@implementation WeatherView

- (void)buildView {
    
    _tableView                  = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    _tableView.backgroundColor  = [UIColor clearColor];
    _tableView.delegate         = self;
    _tableView.separatorStyle   = UITableViewCellSeparatorStyleSingleLine;
    [self addSubview:_tableView];
    
    /**
     *  显示控件
     */
    _weatherIconView = [[WeatherIconView alloc] initWithFrame:CGRectMake(0, Height - 1.5 * Width, Width / 2.0, Width / 2.0)];
    _weatherIconView.backgroundColor = [UIColor blackColor];
    [_tableView addSubview:_weatherIconView];
    
    _temperatureView = [[TemperatureView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - 1.5 * Width, Width / 2.0, Width / 2.0)];
    _temperatureView.backgroundColor = [UIColor greenColor];
    [_tableView addSubview:_temperatureView];
    
    _humidityView = [[HumidityView alloc] initWithFrame:CGRectMake(0, Height - Width, Width / 2.0, Width / 2.0)];
    _humidityView.backgroundColor = [UIColor yellowColor];
    [_tableView addSubview:_humidityView];
    
    _sunInfoView = [[SunInfoView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - Width, Width / 2.0, Width / 2.0)];
    _sunInfoView.backgroundColor = [UIColor grayColor];
    [_tableView addSubview:_sunInfoView];
    
    _maxTempView = [[MaxTempView alloc] initWithFrame:CGRectMake(0, Height - Width / 2.0, Width / 2.0, Width / 2.0)];
    _maxTempView.backgroundColor = [UIColor redColor];
    [_tableView addSubview:_maxTempView];
    
    _windSpeedView = [[WindSpeedView alloc] initWithFrame:CGRectMake(Width / 2.0, Height - Width / 2.0, Width / 2.0, Width / 2.0)];
    [_tableView addSubview:_windSpeedView];
}

@end
