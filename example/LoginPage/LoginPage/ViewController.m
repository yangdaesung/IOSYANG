//
//  ViewController.m
//  LoginPage
//
//  Created by Yang on 2016. 10. 11..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
//#import <UIKit/UIKit.h>

@interface ViewController ()

<UIScrollViewDelegate,UITextFieldDelegate>
//scr -scro
@property (nonatomic)UIScrollView *scrView;
@property (nonatomic)UITextField *textId;
@property (nonatomic)UITextField *textPw;
@property (nonatomic)UILabel *myLog;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //blackPageView
    UIImageView *blackPink = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-80,self.view.frame.size.height/6-40,self.view.frame.size.width/2-30, self.view.frame.size.height/6+20)];
    [blackPink setImage:[UIImage imageNamed:@"pink.png"]];
    [blackPink setContentMode:UIViewContentModeScaleToFill];
//    blackPink.layer.cornerRadius = 10.f;
//    blackPink.layer.borderColor = [UIColor blackColor].CGColor;
//    blackPink.layer.borderWidth = 2.0;
    [self.view addSubview:blackPink];
    
    //scrollView
    UIScrollView *scView = [[UIScrollView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/6-43, self.view.frame.size.height/5+80, self.view.frame.size.width/2+155, self.view.frame.size.height/2-40)];
    scView.backgroundColor = [UIColor whiteColor];
    [scView setContentSize:CGSizeMake(scView.frame.size.width/2+140, scView.frame.size.height/2-40)];
    scView.delegate = self;
    scView.bounces = YES;
    self.scrView = scView;
    [self.view addSubview:scView];
    
    //가운데 뷰
    UIView *cenView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/6-80, self.view.frame.size.height/5-100, self.view.frame.size.width/2+180, self.view.frame.size.height/2)];
    [scView addSubview:cenView];
    
    //myPageView
    UILabel *myLogin = [[UILabel alloc] initWithFrame:CGRectMake(0,cenView.frame.size.height/6-40,cenView.frame.size.width, cenView.frame.size.height/6-10)];
    myLogin.backgroundColor = [UIColor whiteColor];
    myLogin.text = @" 지수 Login Page ";
    myLogin.textColor = [UIColor blackColor];
    myLogin.textAlignment = NSTextAlignmentCenter;
    self.myLog = myLogin;
    [cenView addSubview:myLogin];
    
    //왼쪽 들여쓰기 !!
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    UIView *paddingView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    //ID textField만들기
    UITextField *idText = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-40, scView.frame.size.height/3-40, 250, 30)];
    idText.borderStyle = UITextBorderStyleRoundedRect;
    idText.placeholder = @"ID를 입력해 주세요";
    idText.font = [UIFont systemFontOfSize:13];
    idText.delegate = self;
    idText.leftView = paddingView;
    idText.leftViewMode = UITextFieldViewModeAlways;
    //[idText setAutocorrectionType:UITextAutocorrectionTypeNo];//자동 완성 끄는 기능...
    self.textId = idText;
    [cenView addSubview:idText];
    
    //PW textField만들기
    
    //pw -> passward 로 길게 써야한다.
    UITextField *pwText = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-40, scView.frame.size.height/3+10, 250, 30)];
    pwText.borderStyle = UITextBorderStyleRoundedRect;
    pwText.placeholder = @"PASSWORD를 입력해 주세요";
    pwText.font = [UIFont systemFontOfSize:13];
    pwText.delegate = self;
    pwText.leftView = paddingView1;
    //[pwText setAutocorrectionType:UITextAutocorrectionTypeNo];
    pwText.leftViewMode = UITextFieldViewModeAlways;
    pwText.secureTextEntry = YES;
    self.textPw = pwText;
    [cenView addSubview:pwText];
    
    //로그인 버튼 만들기
    //btn
    UIButton *logBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-30, self.view.frame.size.height/3-30, 100, 30)];
    [logBtn setTitle:@"로그인" forState:UIControlStateNormal];
    [logBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [logBtn setImage:[UIImage imageNamed:@"로그인.jpeg"] forState:UIControlStateNormal];
    [cenView addSubview:logBtn];
    
    //회원가입 버튼 만들기
    UIButton *joinBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+90, self.view.frame.size.height/3-30, 100, 30)];
    [joinBtn setTitle:@"회원가입" forState:UIControlStateNormal];
    [joinBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [joinBtn setImage:[UIImage imageNamed:@"sign.png"] forState:UIControlStateNormal];
    [cenView addSubview:joinBtn];
    
    
    //터치시 키보드 내려가는 것 !
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissk:)];
    [self.view addGestureRecognizer:tap];
    
    //아이디 체크박스 !!
    UIButton *ckBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [ckBtn setFrame:CGRectMake(self.view.frame.size.width/4-30, scView.frame.size.height/3+43, 30, 30)];
    
    [ckBtn setImage:[UIImage imageNamed:@"체크1.png"] forState:UIControlStateNormal];
    [ckBtn setImage:[UIImage imageNamed:@"체크박스1.png"] forState:UIControlStateSelected];
    //ckBtn.imageView.alpha
    [ckBtn addTarget:self action:@selector(chkBtnHandler:) forControlEvents:UIControlEventTouchUpInside];
    
    [ckBtn setTitle:@"no check" forState:UIControlStateNormal];
    [ckBtn setTitle:@"check" forState:UIControlStateSelected];
    
    [cenView addSubview:ckBtn];
    
    //패스워드 체크박스 !!
    UIButton *ckBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [ckBtn1 setFrame:CGRectMake(self.view.frame.size.width/4+90, scView.frame.size.height/3+43, 30, 30)];
    
    [ckBtn1 setImage:[UIImage imageNamed:@"체크1.png"] forState:UIControlStateNormal];
    [ckBtn1 setImage:[UIImage imageNamed:@"체크박스1.png"] forState:UIControlStateSelected];
    
    [ckBtn1 addTarget:self action:@selector(chkBtnHandler:) forControlEvents:UIControlEventTouchUpInside];
    
    [ckBtn1 setTitle:@"no check" forState:UIControlStateNormal];
    [ckBtn1 setTitle:@"check" forState:UIControlStateSelected];
    
    [cenView addSubview:ckBtn1];
    
    //아이디 저장 뷰!
    UILabel *logLab = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+3, scView.frame.size.height/3+50, 40, 15)];
    logLab.text = @"ID저장";
    logLab.textAlignment = NSTextAlignmentCenter;
    logLab.textColor = [UIColor blackColor];
    logLab.font = [UIFont systemFontOfSize:12];
    [cenView addSubview:logLab];
    
    //패스워드 저장 뷰 !
    UILabel *pwLab = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+130, scView.frame.size.height/3+50, 40, 15)];
    pwLab.text = @"PW저장";
    pwLab.textAlignment = NSTextAlignmentCenter;
    pwLab.textColor = [UIColor blackColor];
    pwLab.font = [UIFont systemFontOfSize:12];
    [cenView addSubview:pwLab];
    
    [self blinkTextInLabel:self.myLog toColor:[UIColor redColor]];
    [self myLabel];
}

//리턴 누를시 키보드 내려감...
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    bool start;
    
    if ([textField.placeholder isEqualToString:@"ID를 입력해 주세요"]) {
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        
        [textField resignFirstResponder];
        [_textPw becomeFirstResponder];
        
        [UIView commitAnimations];
        
        start = NO;
    }else
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        
        [textField resignFirstResponder];
        [_scrView setContentOffset:CGPointMake(0, 0)];
        
        [UIView commitAnimations];
        
        start = YES;
    }
    
    return start;
}

//스크롤뷰 올라가는거 !!!!!!!!!!!!!
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{

    [self.scrView setContentOffset:CGPointMake(0, 20)];
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    [self.scrView setContentOffset:CGPointMake(0, 50)];
    
}

//터치시 내려가는 메소드!
- (void) dismissk:(UITapGestureRecognizer *)sender
{
    [self.textId resignFirstResponder];
    [self.textPw resignFirstResponder];
    
}
//체크박스 메소드 !
- (void)chkBtnHandler:(id)sender{
    [(UIButton *)sender setSelected:![(UIButton *)sender isSelected]];
}

//메인 텍스트 컬러 바뀌는 메소드 !
- (void)blinkTextInLabel:(UILabel *)label toColor:(UIColor *)color
{
    [UIView transitionWithView:self.myLog
                      duration:5.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
        // set to background color (change the color if necessary)
        
                        self.myLog.textColor = [UIColor redColor];
        }
                    completion:^(BOOL finished) {
                        [UIView transitionWithView:self.myLog
                                          duration:10.0f
                                           options:UIViewAnimationOptionTransitionCrossDissolve
                                        animations:^{
                                            self.myLog.textColor = [UIColor blueColor];
                                            }
                                        completion:^(BOOL finished) {
                                               [UIView transitionWithView:self.myLog
                                                                 duration:5.0f
                                                                  options:UIViewAnimationOptionTransitionCrossDissolve
                                                               animations:^{self.myLog.textColor = [UIColor purpleColor];
                                                               }
                                                               completion:nil];
                                        }];
        }];
   
}

- (void)myLabel
{
    
    
    
        [UIView transitionWithView:self.myLog
                          duration:2.0f
                           options:UIViewAnimationOptionRepeat
                        animations:^{ [self.myLog setFrame:CGRectMake(100, 200, self.myLog.bounds.size.width, self.myLog.bounds.size.height)];
                        }
                        completion:^(BOOL finished) {
                            [UIView an]
                        }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
