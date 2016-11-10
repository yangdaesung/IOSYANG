//
//  ViewController.m
//  NavigationBar1025
//
//  Created by Yang on 2016. 10. 25..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //라벨
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    mainView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:mainView];
    
    
    UIButton *settingBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2+100, 0, self.view.frame.size.width/4, 44)];
    //[settingBtn setTitle:@"setting" forState:UIControlStateNormal];
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"setting.png"] forState:    UIControlStateNormal];
    [settingBtn addTarget:self action:@selector(onSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
    
    [mainView addSubview:settingBtn];

    UIButton *downloadBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/7-55, 0, self.view.frame.size.width/4, 44)];
    //[settingBtn setTitle:@"setting" forState:UIControlStateNormal];
    [downloadBtn setBackgroundImage:[UIImage imageNamed:@"download.png"] forState:    UIControlStateNormal];
    [downloadBtn addTarget:self action:@selector(onSelectedBtnItem:) forControlEvents:UIControlEventTouchUpInside];
    
    [mainView addSubview:downloadBtn];
    
    //네비게이터 숨기는 것.
    [self.navigationController setNavigationBarHidden:YES];
    
    
    UIButton *itemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [itemBtn addTarget:self action:@selector(onSelectedBtnItem:) forControlEvents:UIControlEventTouchUpInside];
    itemBtn.frame = CGRectMake(0, 0, 100, 44);
    [itemBtn setTitle:@"custom" forState:UIControlStateNormal];
    [itemBtn setTintColor:[UIColor whiteColor]];
    [itemBtn setBackgroundColor:[UIColor redColor]];
    
    
    UIBarButtonItem *cItem = [[UIBarButtonItem alloc] initWithCustomView:itemBtn];
    
    //오른쪽 버튼 만들기!
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"YNAG"
                                                        style:UIBarButtonItemStylePlain
                                                        target:self
                                                        action:@selector(onSelectedItem:)];
    //실행할것 !
    self.navigationItem.rightBarButtonItem = item;
    self.navigationItem.leftBarButtonItem = cItem;
    
}

- (void)onSelectedBtnItem:(UIBarButtonItem *)sender
{
    
}


- (void)onSelectedItem:(UIButton *)sender
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
