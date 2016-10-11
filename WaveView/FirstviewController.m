//
//  FirstviewController.m
//  WaveView
//
//  Created by zhangcong on 2016/10/11.
//  Copyright © 2016年 renrenlab. All rights reserved.
//

#import "FirstviewController.h"
#import "SecondviewController.h"
@interface FirstviewController ()

@end

@implementation FirstviewController
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = YES;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.view.backgroundColor = [UIColor colorFromHexString:@"32a0ff"];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondviewController *svc = [[SecondviewController alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
}
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
