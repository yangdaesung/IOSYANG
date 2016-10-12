//
//  ViewController.m
//  UiDelegate1011
//
//  Created by Yang on 2016. 10. 11..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate,UIScrollViewDelegate>



@property (nonatomic)UIButton *setBtn;
@property (nonatomic)UILabel *getLb;
@property (nonatomic)NSString *inputText;
@property UITextField *myTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    //텍스트 필드
//    UITextField *dtText = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 200, 30)];
//    self.myTextField = dtText;
//    dtText.textColor = [UIColor blackColor];
//    dtText.textAlignment = NSTextAlignmentCenter;
//    dtText.placeholder = @"입력";
//    dtText.borderStyle = UITextBorderStyleLine;
//    dtText.delegate = self;
//    [self.view addSubview:dtText];
//    
//    //버튼
//    UIButton *tfBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    tfBtn.backgroundColor = [UIColor grayColor];
//    tfBtn.frame = CGRectMake(300, 50, 70, 30);
//    [tfBtn addTarget:self action:@selector(firstButton:) forControlEvents:UIControlEventTouchUpInside];
//    tfBtn.titleLabel.font = [UIFont systemFontOfSize:15];
//    [tfBtn setTitle:@"확인" forState:UIControlStateSelected];
//    [tfBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [tfBtn setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//    [tfBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
//    tfBtn.layer.cornerRadius = 10.f;
//    
//    
//    [self.view addSubview:tfBtn];
//    
//    
//    UILabel *lavel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 40)];
//    self.getLb = lavel;
//    lavel.font = [UIFont systemFontOfSize:15];
//    lavel.textAlignment = NSTextAlignmentCenter;
//    lavel.text = @"결과 : 텍스트 입력 전 ";
//    [self.view addSubview:lavel];
//    
//}
//
//- (void)firstButton:(UIButton *)sender
//{
////    if (self.inputText != nil) {
////        self.getLb.text = self.inputText;
//    self.getLb.text = self.myTextField.text;
//        NSLog(@"string%@", self.myTextField.text);
////    }
//    


    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*3, 460)];
    
    scrollView.bounces = NO;
    scrollView.delegate = self;
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    //view1
    UIView *newView1 =
    [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    newView1.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:newView1];
    
    //view2
    UIView *newView2 =
    [[UIView alloc] initWithFrame:CGRectMake(320, 0, 320, 460)];
    newView2.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:newView2];
    
    //view3
    UIView *newView3 =
    [[UIView alloc] initWithFrame:CGRectMake(640, 0, 320, 460)];
    newView3.backgroundColor = [UIColor redColor];
    [scrollView addSubview:newView3];


    //상단에 페이지 추가
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
