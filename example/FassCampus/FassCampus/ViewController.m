//
//  ViewController.m
//  FassCampus
//
//  Created by Yang on 2016. 10. 1..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //메인뷰
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, self.view.frame.size.height/10)];
    mainView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:mainView];
    
    
    //중간에 다음 텍스트로 넣은 것 안이뻐서 안씀!
    /*메인뷰 텍스트
    UILabel *daumText = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, self.view.frame.size.width-40, self.view.frame.size.height/10-40)];
    daumText.text = @"DAUM";
    daumText.textColor = [UIColor blueColor];
    [daumText setShadowColor:[UIColor colorWithRed:120.0f/255.0f green:109.0f/255.0f blue:196.0f/255.0f alpha:1.0f]];
    daumText.textAlignment = NSTextAlignmentCenter;
    daumText.font = [UIFont systemFontOfSize:25];
    [mainView addSubview:daumText];*/
    
    //다음 로고 !
    UIImageView *daumLogo = [[UIImageView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/4+35,mainView.frame.size.height/3-10, mainView.frame.size.width/2-70, self.view.frame.size.height/10-40)];
    [daumLogo setImage:[UIImage imageNamed:@"다음.png"]];
    [daumLogo setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:daumLogo];
    
    //메뉴바
    UIImageView *manu = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, mainView.frame.size.width/7-20, mainView.frame.size.height-30)];
    [manu setImage:[UIImage imageNamed:@"메뉴.png"]];
    [manu setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:manu];
    
    /*이미지 레이아웃 !
    manu.layer.cornerRadius = 5;
    manu.layer.masksToBounds = YES;
    manu.layer.borderColor = [UIColor grayColor].CGColor;
    manu.layer.borderWidth = 2.0;*/
    
    //마이페이지
    UIImageView *myPage = [[UIImageView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/5+250,10, mainView.frame.size.width/7-10, mainView.frame.size.height/2)];
    [myPage setImage:[UIImage imageNamed:@"마이페이지.png"]];
    [myPage setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:myPage];
    
    
    CGRect textViewFrame = CGRectMake(mainView.frame.size.width, self.view.frame.size.height/4, mainView.frame.size.width, self.view.frame.size.height/4);
    UITextView *textView = [[UITextView alloc] initWithFrame:textViewFrame];
    textView.text = @"검색";
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
