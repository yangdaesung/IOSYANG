//
//  ViewController3.m
//  LoginPage1024
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController2.h"
#import "ViewController.h"

@interface ViewController3 ()
@property (weak, nonatomic) IBOutlet UITextField *setID;
@property (weak, nonatomic) IBOutlet UITextField *setPW;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"My Apple";

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//회원가입 들어감
- (IBAction)signupPageBtn:(id)sender
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController2 *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    
    [self.navigationController pushViewController:vc2 animated:YES];

  
}
//로그인 성공 들어감
- (IBAction)LoginSuccess:(id)sender
{
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"ID"]isEqualToString:self.setID.text],
        [[[NSUserDefaults standardUserDefaults]objectForKey:@"PW"]isEqualToString:self.setPW.text]) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        
        [self.navigationController pushViewController:vc animated:YES];
    }else{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"로그인실패"
                                                                       message:@"ㅗㅗㅗㅗㅗㅗㅗ"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"확인"
                                                         style:UIAlertActionStyleDefault
                                                       handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
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
