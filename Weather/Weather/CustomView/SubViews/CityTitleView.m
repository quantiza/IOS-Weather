//
//  CityTitleView.m
//  Weather
//
//  Created by LongYang on 2017/11/29.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "CityTitleView.h"
#import "CGRectStoreValue.h"

@interface CityTitleView ()

@property (nonatomic, strong) UILabel          *baseLabel;       // 基站label
@property (nonatomic, strong) CGRectStoreValue *baseLabelStoreValue;

@property (nonatomic, strong) UILabel          *cityNameLabel;   // 城市名字label
@property (nonatomic, strong) CGRectStoreValue *cityNameLabelStoreValue;

@property (nonatomic, strong) UILabel          *weatherDesLabel; // 天气描述label
@property (nonatomic, strong) CGRectStoreValue *weatherDesLabelStoreValue;

@property (nonatomic, strong) UILabel          *updateYearLabel; // 更新年份label
@property (nonatomic, strong) CGRectStoreValue *updateYearLabelStoreValue;

@property (nonatomic, strong) UILabel          *updateHourLabel; // 更新的小时label
@property (nonatomic, strong) CGRectStoreValue *updateHourLabelStoreValue;

@property (nonatomic, strong) UIView           *blackView;       // 黑色的view
@property (nonatomic, strong) CGRectStoreValue *blackViewStoreValue;

@property (nonatomic, strong) UIView           *redView;         // 红色的view
@property (nonatomic, strong) CGRectStoreValue *redViewStoreValue;

@end

@implementation CityTitleView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initLayout];
    }
    
    return self;
}

- (void)initLayout {
    
    self.backgroundColor        = [UIColor whiteColor];
    
    _baseLabel                  = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, Width - 8, 12)];
    _baseLabel.textAlignment    = NSTextAlignmentRight;
    _baseLabel.font             = [UIFont fontWithName:LATO_BOLD size:10];
    _baseLabel.text             = @"cmc station";
    _baseLabelStoreValue        = [CGRectStoreValue new];
    [self moveToLeftWithMidRect:_baseLabel.frame moveDistance:10 withStoreValue:_baseLabelStoreValue];
    _baseLabel.frame            = _baseLabelStoreValue.startRect;
    _baseLabel.alpha            = 0;
    [self addSubview:_baseLabel];
    
    _blackView                  = [[UIView alloc] initWithFrame:CGRectMake(-30, 22, 35, 60)];
    _blackView.backgroundColor  = [UIColor blackColor];
    _blackViewStoreValue        = [CGRectStoreValue new];
    [self moveToRightWithMidRect:_blackView.frame moveDistance:5 withStoreValue:_blackViewStoreValue];
    _blackView.frame            = _blackViewStoreValue.startRect;
    _blackView.alpha            = 0;
    [self addSubview:_blackView];
    
    
    
    CGFloat redViewWidth        = 135;
    _redView                    = [[UIView alloc] initWithFrame:CGRectMake(Width - redViewWidth, 22, redViewWidth + 100, 60)];
    _redView.backgroundColor    = [UIColor redColor];
    _redViewStoreValue          = [CGRectStoreValue new];
    [self moveToLeftWithMidRect:_redView.frame moveDistance:30 withStoreValue:_redViewStoreValue];
    _redView.frame              = _redViewStoreValue.startRect;
    _redView.alpha              = 0;
    [self addSubview:_redView];
    
    _updateYearLabel                = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, Width - 40, 18)];
    _updateYearLabel.text           = @"2015.03.21";
    _updateYearLabel.textAlignment  = NSTextAlignmentRight;
    _updateYearLabel.textColor      = [UIColor whiteColor];
    _updateYearLabel.font           = [UIFont fontWithName:LATO_LIGHT size:16];
    _updateYearLabelStoreValue      = [CGRectStoreValue new];
    [self moveToLeftWithMidRect:_updateYearLabel.frame moveDistance:20 withStoreValue:_updateYearLabelStoreValue];
    _updateYearLabel.frame          = _updateYearLabelStoreValue.startRect;
    _updateYearLabel.alpha          = 0;
    [self addSubview:_updateYearLabel];
    
    _updateHourLabel                = [[UILabel alloc] initWithFrame:CGRectMake(0, 55, Width - 8, 20)];
    _updateHourLabel.text           = @"13:20 update";
    _updateHourLabel.textAlignment  = NSTextAlignmentRight;
    _updateHourLabel.textColor      = [UIColor whiteColor];
    _updateHourLabel.font           = [UIFont fontWithName:LATO_REGULAR size:16];
    _updateHourLabelStoreValue      = [CGRectStoreValue new];
    [self moveToLeftWithMidRect:_updateHourLabel.frame moveDistance:15 withStoreValue:_updateHourLabelStoreValue];
    _updateHourLabel.frame          = _updateHourLabelStoreValue.startRect;
    _updateHourLabel.alpha          = 0;
    [self addSubview:_updateHourLabel];
    
    _cityNameLabel                  = [[UILabel alloc] initWithFrame:CGRectMake(12, 17, Width - 10, 40)];
    _cityNameLabel.text             = @"San Francisco";
    _cityNameLabel.font             = [UIFont fontWithName:LATO_LIGHT size:30];
    [_cityNameLabel sizeToFit];
    _cityNameLabelStoreValue        = [CGRectStoreValue new];
    [self moveToRightWithMidRect:_cityNameLabel.frame moveDistance:10 withStoreValue:_cityNameLabelStoreValue];
    _cityNameLabel.frame            = _cityNameLabelStoreValue.startRect;
    _cityNameLabel.alpha            = 0;
    [self addSubview:_cityNameLabel];
    
    _weatherDesLabel                = [[UILabel alloc] initWithFrame:CGRectMake(15, 62, Width - 10, 20)];
    _weatherDesLabel.text           = @"broken clouds";
    _weatherDesLabel.font           = [UIFont fontWithName:LATO_THIN size:16];
    [_weatherDesLabel sizeToFit];
    _weatherDesLabelStoreValue      = [CGRectStoreValue new];
    [self moveToRightWithMidRect:_weatherDesLabel.frame moveDistance:10 withStoreValue:_weatherDesLabelStoreValue];
    _weatherDesLabel.frame          = _weatherDesLabelStoreValue.startRect;
    _weatherDesLabel.alpha          = 0;
    [self addSubview:_weatherDesLabel];
}

- (void)moveToLeftWithMidRect:(CGRect)rect
                 moveDistance:(CGFloat)distance
               withStoreValue:(CGRectStoreValue *)storeValue {
    
    storeValue.midRect      = rect;
    storeValue.startRect    = CGRectMake(rect.origin.x + distance, rect.origin.y, rect.size.width, rect.size.height);;
    storeValue.endRect      = CGRectMake(rect.origin.x - distance, rect.origin.y, rect.size.width, rect.size.height);;
}

- (void)moveToRightWithMidRect:(CGRect)rect
                  moveDistance:(CGFloat)distance
                withStoreValue:(CGRectStoreValue *)storeValue {
    
    storeValue.midRect      = rect;
    storeValue.startRect    = CGRectMake(rect.origin.x - distance, rect.origin.y, rect.size.width, rect.size.height);
    storeValue.endRect      = CGRectMake(rect.origin.x + distance, rect.origin.y, rect.size.width, rect.size.height);
}

- (void)show {
    
    CGFloat duration = 1.75;
    [UIView animateWithDuration:duration animations:^{
        
        _baseLabel.frame        = _baseLabelStoreValue.midRect;
        _baseLabel.alpha        = 1;
        
        _cityNameLabel.frame    = _cityNameLabelStoreValue.midRect;
        _cityNameLabel.alpha    = 1;
        
        _weatherDesLabel.frame  = _weatherDesLabelStoreValue.midRect;
        _weatherDesLabel.alpha  = 1;
        
        _updateYearLabel.frame  = _updateYearLabelStoreValue.midRect;
        _updateYearLabel.alpha  = 1;
        
        _updateHourLabel.frame  = _updateHourLabelStoreValue.midRect;
        _updateHourLabel.alpha  = 1;
        
        _redView.frame          = _redViewStoreValue.midRect;
        _redView.alpha          = 1;
        
        _blackView.frame        = _blackViewStoreValue.midRect;
        _blackView.alpha        = 1;
    }];
    
}

- (void)hide {
    
    CGFloat duration = 0.75;
    [UIView animateWithDuration:duration animations:^{
        
        self.baseLabel.frame = self.baseLabelStoreValue.endRect;
        self.baseLabel.alpha = 0.f;
        
        self.cityNameLabel.frame = self.cityNameLabelStoreValue.endRect;
        self.cityNameLabel.alpha = 0.f;
        
        self.weatherDesLabel.frame = self.weatherDesLabelStoreValue.endRect;
        self.weatherDesLabel.alpha = 0.f;
        
        self.updateYearLabel.frame = self.updateYearLabelStoreValue.endRect;
        self.updateYearLabel.alpha = 0.f;
        
        self.updateHourLabel.frame = self.updateHourLabelStoreValue.endRect;
        self.updateHourLabel.alpha = 0.f;
        
        self.redView.frame = self.redViewStoreValue.endRect;
        self.redView.alpha = 0.f;
        
        self.blackView.frame = self.blackViewStoreValue.endRect;
        self.blackView.alpha = 0.f;
        
    } completion:^(BOOL finished) {
        
        self.baseLabel.frame       = self.baseLabelStoreValue.startRect;
        self.cityNameLabel.frame   = self.cityNameLabelStoreValue.startRect;
        self.weatherDesLabel.frame = self.weatherDesLabelStoreValue.startRect;
        self.updateYearLabel.frame = self.updateYearLabelStoreValue.startRect;
        self.updateHourLabel.frame = self.updateHourLabelStoreValue.startRect;
        self.redView.frame         = self.redViewStoreValue.startRect;
        self.blackView.frame       = self.blackViewStoreValue.startRect;
    }];
}

@end






















