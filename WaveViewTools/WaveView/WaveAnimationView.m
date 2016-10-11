//
//  WaveAnimationView.m
//  WaveViewDemo
//
//  Created by PG on 16/8/23.
//  Copyright © 2016年 pg. All rights reserved.
//

#import "WaveAnimationView.h"
#import "WaveView.h"
#import "UIView+YZTCView.h"


@implementation WaveAnimationView



- (void)layoutSubviews
{
    [super layoutSubviews] ;
    
    CGFloat widthF  = self.yzWidth ;

    // 复制因子
    CAReplicatorLayer *repLayer = [[CAReplicatorLayer alloc] init ];
    // frame大小
    repLayer.frame = CGRectMake(0, 0, self.yzWidth, self.yzHeight) ;
    repLayer.backgroundColor = [UIColor clearColor].CGColor ;
    // 将contentView.layer添加到repLayer上面
    [repLayer addSublayer:self.contentView.layer ] ;
    // 复制个数
    repLayer.instanceCount = 2 ;
    //偏移量
    repLayer.instanceTransform = CATransform3DMakeTranslation(widthF-1, 0, 0) ;
    [self.layer addSublayer:repLayer] ;
    // x轴动画
    CABasicAnimation *posAnim = [CABasicAnimation animationWithKeyPath:@"position.x"] ;
    // 终点值
    posAnim.toValue = @(-widthF/2) ;
    // 时间范围
    posAnim.duration = 1 ;
    // 速度
    posAnim.speed = self.speedF ;
//    posAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints: 0.292 : 0.375 : 0.521 : 0.625];
    // 区间速度
    posAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints: 0.132 : 0.285 : 0.500 : 0.562];
    // 重复次数
    posAnim.repeatCount = MAXFLOAT ;
    // 将动画添加到contentView上
    [self.contentView.layer addAnimation:posAnim forKey:nil];
    
}


@end
