//
//  ViewController2.m
//  LoginPage1024
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController.h"
#import "AppDelegate.h"
#import "DataCenter.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UITextField *setID;
@property (weak, nonatomic) IBOutlet UITextField *setPW;
@property (weak, nonatomic) IBOutlet UITextField *setPW2;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"회원 가입";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//회원가입 뷰에서 back 누를때 이동
- (IBAction)backBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    
   }
//회원가입 성공시 뷰 이동
- (IBAction)LoginSuccess:(id)sender
{
    
    //회원가입 알럿!

    if (![self.setPW.text isEqualToString:self.setPW2.text]) {
        
        //비밀번호 확인이 틀릴때...
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"가입실패" message:@"비밀번호가 틀리다" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:okBtn];
        [self presentViewController:alert animated:YES completion:nil];
  
    }
    //중복일때...
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"ID"]isEqualToString:self.setID.text]) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"노노"
                                                                       message:@"중복"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
                                                        style:UIAlertActionStyleDefault
                                                      handler:nil];
        
        [alert addAction:okBtn];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }else{
        //가입후 메인페이지로 ..
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        
        [self.navigationController pushViewController:vc animated:YES];
        
        [[DataCenter sharedManager]joinUserID:self.setID.text userPW:self.setPW.text];
        
    }

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
