//
//  ViewController.m
//  business1
//
//  Created by gewei on 2021/1/15.
//

#import "ViewController.h"
#import <shareKit/shareKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    VVshareSDK *test = [[VVshareSDK alloc] init];
    [test sayHello];
    [test sayMyLove];
}


@end
