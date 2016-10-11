//
//  DEFINE.h
//  环信项目1
//
//  Created by PG on 16/7/25.
//  Copyright © 2016年 PG. All rights reserved.
//

#ifndef DEFINE_h
#define DEFINE_h


#endif /* DEFINE_h */


//#import "Category.h"
// 屏幕宽
#define KScreenWidth [UIScreen mainScreen].bounds.size.width
// 屏幕高
#define KScreenHeight [UIScreen mainScreen].bounds.size.height


// x轴比例
#define YZScaleX KScreenWidth/320.0
// y周比例
#define YZScaleY KScreenHeight/568.0




// 程序主颜色
#define MAINCOLOR [UIColor colorWithRed:0.87 green:0.04 blue:0.09 alpha:1]


// 公共的背景色
#define BGCOLOR [UIColor colorWithRed:0.93 green:0.94 blue:0.94 alpha:1]



// 随机色
#define YZRandomColor [UIColor colorWithRed:arc4random_uniform(256.0)/255.0 green:arc4random_uniform(256.0)/255.0 blue:arc4random_uniform(256.0)/255.0 alpha:1]





#define APP  (AppDelegate *)[UIApplication sharedApplication].delegate 





#define iphone5 KScreenHeight==568 ? YES : NO
#define iphone6 KScreenHeight==667.0 ? YES : NO
#define iphone6P KScreenHeight==736.0 ? YES : NO



// 字体
//#define CUSTOMFONT(V) [UIFont systemFontOfSize:V]
#define CUSTOMFONT(V) [NSObject fitFontAct:V]


// 字符串
#define CUSTOMSTRING(FORM , value) [NSString stringWithFormat:FORM , value ]


// 判断字符串是否为空
#define NULLSTRING(string) [NSString isNullJudge:string]








// 导入其他文件
//#import "API.h"
#import "UIView+YZTCView.h"






