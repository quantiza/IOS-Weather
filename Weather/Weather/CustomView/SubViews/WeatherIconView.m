//
//  WeatherIconView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "WeatherIconView.h"
#import "CGRectStoreValue.h"

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
}

@end





















