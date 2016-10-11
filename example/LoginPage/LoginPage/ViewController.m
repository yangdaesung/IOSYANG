//
//  ViewController.m
//  LoginPage
//
//  Created by Yang on 2016. 10. 11..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //myPageView
    UILabel *myLogin = [[UILabel alloc] initWithFrame:CGRectMake(0,self.view.frame.size.height/6-100,self.view.frame.size.width, self.view.frame.size.height/6)];
    myLogin.backgroundColor = [UIColor whiteColor];
    myLogin.text = @"MY PAGE LOGIN";
    myLogin.textColor = [UIColor blackColor];
    myLogin.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:myLogin];
    
    //scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/6-40, self.view.frame.size.height/5-40, self.view.frame.size.width/2+140, self.view.frame.size.height/2)];
    scrollView.backgroundColor = [UIColor whiteColor];
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width/2+140, scrollView.frame.size.height/2+50)];
    scrollView.delegate = self;
    scrollView.bounces = YES;
    [myLogin addSubview:scrollView];
    
    //가운데 뷰
    UIView *cenView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/6-80, self.view.frame.size.height/5-100, self.view.frame.size.width/2+140, self.view.frame.size.height/2)];
    [scrollView addSubview:cenView];
    
    //ID 라벨 만들기
    UILabel *IdLabel = [[UILabel alloc] initWithFrame:CGRectMake(scrollView.frame.size.width/4-30, scrollView.frame.size.height/3-30, 50, 30)];
    IdLabel.text = @" ID : ";
    IdLabel.textAlignment = NSTextAlignmentCenter;
    [cenView addSubview:IdLabel];
    
    //pw 라벨 만들기
    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(scrollView.frame.size.width/4-30, scrollView.frame.size.height/3+20, 50, 30)];
    pwLabel.text = @"PW : ";
    pwLabel.textAlignment = NSTextAlignmentCenter;
    [cenView addSubview:pwLabel];
    
    //ID textField만들기
    UITextField *idText = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+30, self.view.frame.size.height/3+20, 150, 30)];
    idText.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:idText];
    
    //PW textField만들기
    UITextField *pwText = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+30, self.view.frame.size.height/3+70, 150, 30)];
    pwText.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:pwText];
    
    //로그인 버튼 만들기
    UIButton *logBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-20, self.view.frame.size.height/3-40, 100, 30)];
    [logBtn setTitle:@"로그인" forState:UIControlStateNormal];
    [logBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [cenView addSubview:logBtn];
    
    //회원가입 버튼 만들기
    UIButton *joinBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+60, self.view.frame.size.height/3-40, 100, 30)];
    [joinBtn setTitle:@"회원가입" forState:UIControlStateNormal];
    [joinBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [cenView addSubview:joinBtn];
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
