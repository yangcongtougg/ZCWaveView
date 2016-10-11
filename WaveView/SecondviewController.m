//
//  SecondviewController.m
//  WaveView
//
//  Created by zhangcong on 2016/10/11.
//  Copyright © 2016年 renrenlab. All rights reserved.
//

#import "SecondviewController.h"
#import "WavaRotorView.h"
@interface SecondviewController ()
@property (nonatomic,strong)WavaRotorView *waveView;
@end

@implementation SecondviewController
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBar.translucent = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.view.backgroundColor = [UIColor colorFromHexString:@"32a0ff"];
    [self setUpNav];
    [self setUpUI];
}
- (void)setUpUI {
    [self.view addSubview:self.waveView];
    [self.waveView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(200);
        make.left.equalTo(self.view.mas_left);
        make.size.mas_equalTo(CGSizeMake(self.view.frame.size.width, 300));
    }];
}
- (void)setUpNav {
    self.navigationController.navigationBar.barTintColor = [UIColor colorFromHexString:@"32a0ff"];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}
#pragma mark GET
- (WavaRotorView *)waveView {
    if (!_waveView) {
        _waveView = [[WavaRotorView alloc]init];
        _waveView.backgroundColor = [UIColor whiteColor];
        _waveView.isRiseBool = NO;
    }
    return _waveView;
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
