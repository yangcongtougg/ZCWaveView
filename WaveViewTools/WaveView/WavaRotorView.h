//
//  WavaRotorView.h
//  WaveViewDemo
//
//  Created by PG on 16/8/23.
//  Copyright © 2016年 pg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WavaRotorView : UIView

// 是否上涨
@property (nonatomic , assign)BOOL isRiseBool ;

- (void)initViewssss ;

- (void)stopAnimation ;


@end



/*
 
WavaRotorView *myView = [[WavaRotorView alloc] initWithFrame:CGRectMake(99, 99, 99, 99)];
myView.backgroundColor = [UIColor lightGrayColor] ;
myView.layer.cornerRadius = 99 / 2.0f ;
myView.isRiseBool = NO  ;
[self.view addSubview:myView] ;

*/