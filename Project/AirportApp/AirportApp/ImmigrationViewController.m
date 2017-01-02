//
//  ImmigrationViewController.m
//  AirportApp
//
//  Created by Yang on 2016. 12. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ImmigrationViewController.h"

@interface ImmigrationViewController ()<UIScrollViewDelegate>

@end

@implementation ImmigrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainScrollView.delegate = self;
    
    self.mainScrollView.contentSize =CGSizeMake(self.mainScrollView.frame.size.width*3, self.mainScrollView.frame.size.height);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
