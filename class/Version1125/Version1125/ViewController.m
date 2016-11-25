//
//  ViewController.m
//  Version1125
//
//  Created by Yang on 2016. 11. 25..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%",[[NSProcessInfo processInfo] operatingSystemVersion]);
    NSLog(@"%@",[[NSProcessInfo processInfo] operatingSystemVersionString]);
    NSLog(@"%@",[[UIDevice currentDevice] systemVersion]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
