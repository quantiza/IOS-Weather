//
//  TemperatureView.m
//  Weather
//
//  Created by LongYang on 2017/11/28.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "TemperatureView.h"

@interface TemperatureView ()

@property (nonatomic, strong) UILabel *titleMoveLabel;
@property (nonatomic, strong) UILabel *countLabel;

@end

@implementation TemperatureView

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
    _titleMoveLabel.text            = @"Temperature";
    _titleMoveLabel.font            = [UIFont fontWithName:LATO_LIGHT size:17];
    _titleMoveLabel.textColor       = [UIColor blackColor];
    [_titleMoveLabel sizeToFit];
    [self addSubview:_titleMoveLabel];
    
    _temperature = 30;
    _countLabel                     = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 160, 140)];
    _countLabel.text                = [NSString stringWithFormat:@"%.0lf", _temperature];
    _countLabel.textAlignment       = NSTextAlignmentCenter;
    _countLabel.textColor           = COLOR_PURE_;
    _countLabel.font                = [UIFont fontWithName:LATO_THIN size:90];
    [_countLabel sizeToFit];
    [self addSubview:_countLabel];
}

@end











































