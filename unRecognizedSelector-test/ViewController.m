//
//  ViewController.m
//  unRecognizedSelector-test
//
//  Created by ccSunday on 2017/4/7.
//  Copyright © 2017年 ccSunday. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dataDic = [NSDictionary dictionaryWithObjectsAndKeys:@[@"11",@"22"],@"name", nil];
       if ([dataDic[@"name"] isEqualToString:@"1"]) {
           NSLog(@"=1==wo shi 1");
       }else{
           NSLog(@"=2==wo shi 0");
       }
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
//    [btn addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

//- (void)clicked{
//    [self performSelector:@selector(clicked:click:)];
//}
-(void)click{
    NSDictionary *dataDic = [NSDictionary dictionaryWithObjectsAndKeys:@[@"11",@"22"],@"name", nil];
    if ([dataDic[@"name"] isEqualToString:@"1"]) {
        NSLog(@"=1==wo shi 1");
    }else{
        NSLog(@"=2==wo shi 0");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
