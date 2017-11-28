//
//  ViewController.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "WeatherView.h"

@interface ViewController ()

@property(nonatomic, strong) WeatherView        *weatherView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _weatherView                     = [[WeatherView alloc] initWithFrame:self.view.bounds];
    _weatherView.layer.masksToBounds = YES;
    [_weatherView buildView];
    [self.view addSubview:_weatherView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
