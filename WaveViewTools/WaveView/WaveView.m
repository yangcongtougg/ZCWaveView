//
//  WaveView.m
//  colordemo
//
//  Created by PG on 16/8/22.
//  Copyright © 2016年 p. All rights reserved.
//

#import "WaveView.h"

#import "UIView+YZTCView.h"

@interface WaveView ()
@end





@implementation WaveView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initViewss] ;
    }
    return self;
}

- (void)initViewss
{
    self.wavePeak = 11.1f ;
    self.waveCount = 1 ;
    self.wavePositionF = 0.0f ;
}

- (void)customDisplayerAct
{
    [self setNeedsDisplay] ;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect] ;
    
    // 红色实体的填充贝塞尔曲线
    UIBezierPath *path = [UIBezierPath bezierPath] ;
    // 最上面的分割线的贝塞尔曲线
    UIBezierPath *path1 = [UIBezierPath bezierPath] ;
    for (int i=0; i<self.yzWidth ; i++) {
        if (i==0) {
            // 增加起点(填充)
            [path moveToPoint:CGPointMake(i , self.wavePeak * sin((2 * M_PI) * _waveCount / self.yzWidth * i) + self.waveHeightF + self.wavePositionF )];
            // 增加起点(分割线)
            [path1 moveToPoint:CGPointMake(i , self.wavePeak * sin((2 * M_PI) * _waveCount / self.yzWidth * i) + self.waveHeightF + self.wavePositionF )];
        } else {
            // 增加线段到某个点(填充)
            [path addLineToPoint:CGPointMake(i , self.wavePeak * sin((2 * M_PI) * _waveCount / self.yzWidth * i ) + self.waveHeightF + self.wavePositionF )];
            // 增加线段到某个点(分割线)
            [path1 addLineToPoint:CGPointMake(i , self.wavePeak * sin((2 * M_PI) * _waveCount / self.yzWidth * i ) + self.waveHeightF + self.wavePositionF )];
        }
    }
    // 增加两个边界点（如果没有这2个点的话，没有办法完美填充）
    [path addLineToPoint:CGPointMake(self.yzWidth, self.yzHeight)] ;
    [path addLineToPoint:CGPointMake(0, self.yzHeight)] ;
    // 填充颜色（可以调整他的透明度）
    [[self.fillColor colorWithAlphaComponent:self.opacityF] setFill] ;
    // 分割线颜色（可以调整他的透明度）
    [[self.strokeColor colorWithAlphaComponent:self.opacityF*2>1 ? 1 : self.opacityF*2 ] setStroke] ;
    // 线宽
    path.lineWidth = 3 ;
    //将实体的填充贝塞尔曲线填充
    [path fill] ;
    //将分割线的贝塞尔曲线绘制边线
    [path1 stroke] ;
}






















@end







