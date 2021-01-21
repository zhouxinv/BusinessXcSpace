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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(100);
    }];
}

- (void)onClickBtn:(UIButton *)btn {
    VVshareSDK *test = [[VVshareSDK alloc] init];
    [test sayHello];
    [test sayMyLove];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    VVshareSDK *test = [[VVshareSDK alloc] init];
    [test sayHello];
    [test sayMyLove];
    
    VVLogSDK *log = [[VVLogSDK alloc] init];
    [log sayHello];
}


@end
