//
//  WaveView.h
//  colordemo
//
//  Created by PG on 16/8/22.
//  Copyright © 2016年 p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WaveView : UIView

@property (nonatomic , copy)UIColor *fillColor ;
@property (nonatomic , copy)UIColor *strokeColor ;
@property (nonatomic , assign)CGFloat opacityF ;

@property (nonatomic , assign)CGFloat wavePositionF ;
@property (nonatomic , assign)CGFloat waveHeightF ;

// 波峰
@property (nonatomic , assign)CGFloat wavePeak ;
// 波形数量
@property (nonatomic , assign)NSInteger waveCount ;

- (void)customDisplayerAct ;

@end
