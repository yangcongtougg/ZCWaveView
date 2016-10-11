//
//  WavaRotorView.m
//  WaveViewDemo
//
//  Created by PG on 16/8/23.
//  Copyright © 2016年 pg. All rights reserved.
//

#import "WavaRotorView.h"
#import "WaveAnimationView.h"
#import "WaveView.h"
#import "DEFINE.h"


@interface WavaRotorView ()
{
    CGFloat waveHeightF ;
}
@end


@implementation WavaRotorView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)initViewssss
{
    self.layer.cornerRadius = self.yzWidth / 2.0f ;
    self.isRiseBool = NO  ;
    self.layer.borderColor = [UIColor colorWithRed:0.87 green:0.19 blue:0.19 alpha:1].CGColor ;
    self.layer.borderWidth = 2.0f ;
}


- (void)layoutSubviews
{
    self.layer.masksToBounds = YES ;

    UIColor *myColor = [UIColor colorWithRed:0.799 green:0.000 blue:0.880 alpha:1.000] ;
    
    waveHeightF = self.isRiseBool ? self.yzHeight : self.yzHeight/2.0 ;
    // 创建第一个波浪
    WaveAnimationView *myView1 = [[WaveAnimationView alloc] initWithFrame:CGRectMake(0, 0, self.yzWidth , self.yzHeight )] ;
    myView1.speedF = 0.1 ;
    myView1.backgroundColor = [UIColor clearColor] ;
    WaveView *subView1 = [[WaveView alloc] initWithFrame:CGRectMake(0, 0,  self.yzWidth, self.yzHeight)] ;
    subView1.backgroundColor = [UIColor clearColor] ;
    myView1.contentView       = subView1 ; //内容试图
    subView1.fillColor       = myColor ;   //填充颜色
    subView1.strokeColor     = myColor ;   //描边颜色
    subView1.wavePeak        = 2 ;          //波峰
    subView1.waveCount       = 1 ;          //多少个波
    subView1.opacityF        = .2 ;         //透明度
    subView1.waveHeightF = waveHeightF ;    //波浪高度
    subView1.tag = 11 ;
    myView1.tag = 21 ;
    [self addSubview:myView1] ;
    
    // 创建第2个波浪
    WaveAnimationView *myView2 = [[WaveAnimationView alloc] initWithFrame:CGRectMake(0, 0,  self.yzWidth, self.yzHeight)] ;
    myView2.speedF = 0.3 ;
    myView2.backgroundColor = [UIColor clearColor] ;
    WaveView *subView2 = [[WaveView alloc] initWithFrame:CGRectMake(0, 0,  self.yzWidth, self.yzHeight)] ;
    subView2.backgroundColor = [UIColor clearColor] ;
    myView2.contentView       = subView2 ;
    subView2.fillColor       = myColor ;
    subView2.strokeColor     = myColor ;
    subView2.wavePeak        = 4 ;
    subView2.waveCount       = 1 ;
    subView2.opacityF        = .4 ;
    subView2.waveHeightF = waveHeightF ;
    subView2.tag = 12 ;
    myView2.tag = 22 ;
    [self addSubview:myView2] ;
    
    // 创建第3个波浪
    WaveAnimationView *myView3 = [[WaveAnimationView alloc] initWithFrame:CGRectMake(0, 0,  self.yzWidth, self.yzHeight)] ;
    myView3.speedF = .5 ;
    myView3.backgroundColor = [UIColor clearColor] ;
    WaveView *subView3 = [[WaveView alloc] initWithFrame:CGRectMake(0, 0,  self.yzWidth, self.yzHeight)] ;
    subView3.backgroundColor = [UIColor clearColor] ;
    myView3.contentView      = subView3 ;
    subView3.fillColor       = myColor ;
    subView3.strokeColor     = myColor  ;
    subView3.wavePeak        = 6 ;
    subView3.waveCount       = 1 ;
    subView3.opacityF        = 1 ;
    subView3.tag = 13 ;
    myView3.tag = 23 ;
    subView3.waveHeightF = waveHeightF ;
    [self addSubview:myView3] ;
    
}


- (void)stopAnimation
{
    for (int i=21; i<24; i++)
    {
        WaveAnimationView *myView1 = (WaveAnimationView *)[self viewWithTag:i ] ;
        [myView1.contentView.layer removeAllAnimations] ;
        [myView1 removeFromSuperview] ;
    }
    
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)] ;
    
    [self removeFromSuperview] ;
}

/*
- (void)addTimerAct
{
//    CADisplayLink *gameTimer = [CADisplayLink displayLinkWithTarget:self selector:@selector(riseAction)] ;
//    
//    [gameTimer addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode] ;
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(riseAction) userInfo:nil repeats:YES] ;
    
    [timer fire] ;
}

- (void)riseAction
{
    waveHeightF += 33 ;
    
    for (int i=11; i<14; i++)
    {
        WaveView *myView1 = (WaveView *)[self viewWithTag:i ] ;
        myView1.waveHeightF = waveHeightF ;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [myView1 setNeedsDisplay] ;
            [myView1.layer displayIfNeeded];
        });
    }
    
}

*/







@end
