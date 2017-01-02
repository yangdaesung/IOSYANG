//
//  SignUpViewController.m
//  AirportApp
//
//  Created by Yang on 2016. 12. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "SignUpViewController.h"
#import "DataCenter.h"

@interface SignUpViewController ()<UITextFieldDelegate>

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

#pragma mark - SignUp

//회원가입 버튼 누를시 ..
- (IBAction)signUp:(id)sender
{
    //비밀번호가 다를때
    if (![self.pwSignLabel.text isEqualToString:self.pwConfirmLabel.text])
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"가입 실패"
                                                                       message:@"비밀번호틀립니다."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"확인"
                                                         style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    //아이디가 중복일때
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"ID"]isEqualToString:self.idSignLabel.text]) {
    
        UIAlertController *idAlert = [UIAlertController alertControllerWithTitle:@"아이디 중복"
                                                                         message:@"아이디가 있습니다."
                                                                  preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"확인"
                                                         style:UIAlertActionStyleDefault handler:nil];
        
        [idAlert addAction:action];
        [self presentViewController:idAlert animated:YES completion:nil];
        
    }else
    {
        //완료후 저장 후 메인페이지로 이동
        UIStoryboard *Main = [UIStoryboard storyboardWithName:@"MainPage" bundle:nil];
        
        ViewController *View = [Main instantiateViewControllerWithIdentifier:@"Tabbar"];
        
        [self.navigationController pushViewController:View animated:YES];
        
        [[DataCenter sharedData]signUserID:self.idSignLabel.text signUserPW:self.pwSignLabel.text];
    }
    
    //아이디가 8글자 이상 작성
    if (self.idSignLabel.text.length <= 8 && self.idSignLabel.text.stringByRemovingPercentEncoding && " ") {
        UIColor *color = [UIColor redColor];
        self.idSignLabel.text = nil;
        self.idSignLabel.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"8글자이상 특수문자 쓰지마세요." attributes:@{NSForegroundColorAttributeName:color}];
    }
    
    //비밀번호랑 비밀번호 확인이랑 다르다면..
    if (![self.pwSignLabel.text isEqualToString:self.pwConfirmLabel.text]) {
        NSString *text = [NSString stringWithFormat:@"비밀번호를 다시 입력해 주세요."];
        UIColor *color = [UIColor redColor];
        self.pwSignLabel.text = nil;
        self.pwConfirmLabel.text = nil;
        self.pwSignLabel.attributedPlaceholder = [[NSAttributedString alloc] initWithString:text attributes:@{NSForegroundColorAttributeName:color}];
        
        //비밀번호 글자 수 8글자 이상하기..
        if (self.pwSignLabel.text.length <= 8 && self.pwConfirmLabel.text.length <=8) {
            NSString *text = [NSString stringWithFormat:@"8글자 이상 해주세요."];
            UIColor *color = [UIColor redColor];
            self.pwConfirmLabel.attributedPlaceholder = [[NSAttributedString alloc] initWithString:text attributes:@{NSForegroundColorAttributeName:color}];
        }
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - keyboard Option

//키보드 내리기
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
