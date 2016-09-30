//
//  ViewController.m
//  Class0930
//
//  Created by Yang on 2016. 9. 30..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //첫번째 예문
    UILabel *myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200 ,30)];
    myLabel2.text = @"예제 화면 입니다.";
    myLabel2.textColor = [UIColor blackColor];
    myLabel2.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:myLabel2];
    //두번쩨 예문
    UILabel *myLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-20,self.view.frame.size.width/4-50, 200, 30)];
    myLabel3.text = @"예븐 레이블 입니다.";
    myLabel3.textColor = [UIColor blueColor];
    myLabel3.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:myLabel3];
   
    //세번째 예문
    UIView *myView =[[UIView alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.height/3, 100)];
    myView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:myView];
    
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(myView.frame.size.width-200,myView.frame.size.height-40 , 200, 50)];
    myLabel.text = @"예쁜 레이블 입니다. ";
    myLabel.textColor = [UIColor redColor];
    myLabel.textAlignment = NSTextAlignmentRight;
    [myView addSubview:myLabel];
    
    UILabel *myLabel4 = [[UILabel alloc] initWithFrame:CGRectMake(80, 200, 200, 30)];
    myLabel4.text = @"중앙에 있는 레이블 입니다.";
    myLabel4.textColor = [UIColor brownColor];
    myLabel4.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:myLabel4];
    
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
