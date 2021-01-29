//
//  ViewController.m
//  business1
//
//  Created by gewei on 2021/1/15.
//

#import "ViewController.h"
#import <shareKit/shareKit.h>
#import <NSLogKit/NSLogKit.h>
#import <Masonry/Masonry.h>

@interface ViewController ()
@property (nonatomic, strong) VVshareSDK *test;
@property (nonatomic, strong) VVLogSDK *log;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"Add VVShareSDK" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(150);
    }];
    
    UIButton *btn2 = [[UIButton alloc] init];
    btn2.backgroundColor = [UIColor systemBlueColor];
    [btn2 setTitle:@"Add VVLogSDK" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(onClickBtn2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(btn.mas_bottom).offset(100);
        make.centerX.equalTo(btn);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(150);
    }];
}

- (void)onClickBtn:(UIButton *)btn {
    VVshareSDK *test = [[VVshareSDK alloc] init];
    _test = test;
//    [test sayHello];
//    [test sayMyLove];
    [test addLabelWithView:self.view];
}

- (void)onClickBtn2:(UIButton *)btn {
    
    VVLogSDK *log = [[VVLogSDK alloc] init];
    _log = log;
//    [log sayHello];
    [log addMenuWithView:self.view];
}


@end
