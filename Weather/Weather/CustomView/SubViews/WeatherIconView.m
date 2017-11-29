//
//  WeatherIconView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "WeatherIconView.h"
#import "CGRectStoreValue.h"
#import "WeatherNumberMeaningTransform.h"
#import "UIView+GlowView.h"

struct WeatherIconViewStoreValue {
    CGRect startRect;
    CGRect midRect;
    CGRect endRect;
};

@interface WeatherIconView ()

@property (nonatomic, strong) UILabel           *titleMoveLabel;
@property (nonatomic, strong) UILabel           *glowLabel;
@property (nonatomic, strong) CGRectStoreValue  *storeValue;

@end

@implementation WeatherIconView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initLayout];
    }
    
    return self;
}

- (void)initLayout {
    
    _titleMoveLabel                 = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 0, 0)];
    _titleMoveLabel.textAlignment   = NSTextAlignmentLeft;
    _titleMoveLabel.backgroundColor = [UIColor clearColor];
    _titleMoveLabel.text            = @"Weather";
    _titleMoveLabel.font            = [UIFont fontWithName:LATO_LIGHT size:17];
    _titleMoveLabel.textColor       = [UIColor blackColor];
    [_titleMoveLabel sizeToFit];
    [self addSubview:_titleMoveLabel];
    [self show];
}

- (void)show {
    
    _glowLabel                  = [[UILabel alloc] initWithFrame:self.bounds];
    _glowLabel.textAlignment    = NSTextAlignmentCenter;
    _glowLabel.font             = [UIFont fontWithName:WEATHER_TIME size:110];
    _glowLabel.x                = 8;
    _glowLabel.y                = 14;
    _glowLabel.alpha            = 1;
    _glowLabel.text             = [WeatherNumberMeaningTransform fontTextWeatherNumber:_weatherNumber];
    [_glowLabel createGlowLayerWithColor:[WeatherNumberMeaningTransform iconColor:_weatherNumber] glowRadius:2];
    [_glowLabel startGlow];
    _glowLabel.alpha            = 0;
    [self addSubview:_glowLabel];
    
    [UIView animateWithDuration:1.75 animations:^{
        _glowLabel.alpha    = 1;
    }];
}

- (void)hide {
    
    [UIView animateWithDuration:0.75 animations:^{
        _glowLabel.alpha    = 0;
    } completion:^(BOOL finished) {
        [_glowLabel removeFromSuperview];
    }];
}

@end





















