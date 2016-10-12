//
//  ViewController.m
//  LoginPage
//
//  Created by Yang on 2016. 10. 11..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UIScrollViewDelegate,UITextFieldDelegate>

@property (nonatomic)UIScrollView *scrView;
@property (nonatomic)UITextField *textId;
@property (nonatomic)UITextField *textPw;

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
    myLogin.text = @"MY PAGE LOGIN";
    myLogin.textColor = [UIColor blackColor];
    myLogin.textAlignment = NSTextAlignmentCenter;
    [cenView addSubview:myLogin];
    
//    //ID 라벨 만들기
//    UILabel *IdLabel = [[UILabel alloc] initWithFrame:CGRectMake(scView.frame.size.width/4-30, scView.frame.size.height/3-30, 50, 30)];
//    IdLabel.text = @"ID  : ";
//    IdLabel.font = [UIFont boldSystemFontOfSize:20];
//    IdLabel.textColor = [UIColor blackColor];
//    IdLabel.textAlignment = NSTextAlignmentCenter;
//    [cenView addSubview:IdLabel];
//    
//    //pw 라벨 만들기
//    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(scView.frame.size.width/4-30, scView.frame.size.height/3+20, 65, 30)];
//    pwLabel.text = @"PW: ";
//    pwLabel.font = [UIFont boldSystemFontOfSize:20];
//    pwLabel.textColor = [UIColor blackColor];
//    pwLabel.textAlignment = NSTextAlignmentCenter;
//    [cenView addSubview:pwLabel];
    
    //왼쪽 들여쓰기 !!
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    UIView *paddingView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    //ID textField만들기
    UITextField *idText = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-70, scView.frame.size.height/3-30, 250, 30)];
    idText.borderStyle = UITextBorderStyleRoundedRect;
    idText.placeholder = @"ID를 입력해 주세요";
    idText.delegate = self;
    idText.leftView = paddingView;
    idText.leftViewMode = UITextFieldViewModeAlways;
    self.textId = idText;
    [cenView addSubview:idText];
    
    //PW textField만들기
    UITextField *pwText = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-70, scView.frame.size.height/3+20, 250, 30)];
    pwText.borderStyle = UITextBorderStyleRoundedRect;
    pwText.placeholder = @"PASSWORD를 입력해 주세요";
    pwText.delegate = self;
    pwText.leftView = paddingView1;
    pwText.leftViewMode = UITextFieldViewModeAlways;
    pwText.secureTextEntry = YES;
    self.textPw = pwText;
    [cenView addSubview:pwText];
    
    //로그인 버튼 만들기
    UIButton *logBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-60, self.view.frame.size.height/3-40, 100, 30)];
    [logBtn setTitle:@"로그인" forState:UIControlStateNormal];
    [logBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [logBtn setImage:[UIImage imageNamed:@"로그인버튼.jpeg"] forState:UIControlStateNormal];
    [cenView addSubview:logBtn];
    
//    //로그인 버튼 이미지
//    UIImageView *logImage = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4-60, self.view.frame.size.height/3-40, 100, 30)];
//    [logImage setImage:[UIImage imageNamed:@"로그인버튼.jpeg"]];
//    [logImage setContentMode:UIViewContentModeScaleToFill];
//    [cenView addSubview:logImage];
    
    //회원가입 버튼 만들기
    UIButton *joinBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+70, self.view.frame.size.height/3-40, 100, 30)];
    [joinBtn setTitle:@"회원가입" forState:UIControlStateNormal];
    [joinBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [joinBtn setImage:[UIImage imageNamed:@"회원가입버튼.jpeg"] forState:UIControlStateNormal];
    [cenView addSubview:joinBtn];
    
//    //회원가입 버튼 이미지
//    UIImageView *signImage = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+70, self.view.frame.size.height/3-40, 100, 30)];
//    [signImage setImage:[UIImage imageNamed:@"회원가입버튼.jpeg"]];
//    [signImage setContentMode:UIViewContentModeScaleToFill];
//    [cenView addSubview:signImage];
    
//    UIImageView *blackPink2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height - (self.view.frame.size.height/6+45) , self.view.frame.size.width-40, self.view.frame.size.height/6+45)];
//    [blackPink2 setImage:[UIImage imageNamed:@"블랙핑크2.png"]];
////    blackPink2.layer.cornerRadius = 8.f;
////    blackPink2.layer.borderColor = [UIColor blackColor].CGColor;
////    blackPink2.layer.borderWidth = 2.0;
//    [blackPink2 setContentMode:UIViewContentModeScaleToFill];
//    [self.view addSubview:blackPink2];
    
    //터치시 키보드 내려가는 것 !
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissk:)];
    [self.view addGestureRecognizer:tap];
    
    //체크박스 !!
    UIButton *ckBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [ckBtn setFrame:CGRectMake(self.view.frame.size.width/4+183, scView.frame.size.height/3+20, 30, 30)];
    
    [ckBtn setImage:[UIImage imageNamed:@"체크1.png"] forState:UIControlStateNormal];
    [ckBtn setImage:[UIImage imageNamed:@"체크박스1.png"] forState:UIControlStateSelected];
    //ckBtn.imageView.alpha
    [ckBtn addTarget:self action:@selector(chkBtnHandler:) forControlEvents:UIControlEventTouchUpInside];
    
    [ckBtn setTitle:@"no check" forState:UIControlStateNormal];
    [ckBtn setTitle:@"check" forState:UIControlStateSelected];
    
    [cenView addSubview:ckBtn];
    
    //아이디 저장 뷰!
    UILabel *logLab = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4+215, scView.frame.size.height/3+35, 40, 15)];
    logLab.text = @"ID저장";
    logLab.textAlignment = NSTextAlignmentCenter;
    logLab.textColor = [UIColor blackColor];
    logLab.font = [UIFont systemFontOfSize:12];
    [cenView addSubview:logLab];
}

//리턴 누를시 키보드 내려감...
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    bool start;
    
    if ([textField.placeholder isEqualToString:@"ID를 입력해 주세요"]) {
        [textField resignFirstResponder];
        [_textPw becomeFirstResponder];
        
        start = NO;
    }else
    {
        [textField resignFirstResponder];
        [_scrView setContentOffset:CGPointMake(0, 0)];
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
