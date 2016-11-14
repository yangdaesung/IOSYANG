//
//  ViewController.m
//  Project1101
//
//  Created by Yang on 2016. 11. 1..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "SignUpPage.h"
#import "MainPage.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *idTextFd;
@property (strong, nonatomic) IBOutlet UITextField *pwTextFd;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigationBar color
    [self.navigationController.navigationBar setBarTintColor:
     [UIColor colorWithRed:18/255.0 green:187/255.0 blue:198/255.0 alpha:1.0]];
    //navigationBar Text
      self.navigationController.navigationBar.topItem.title = @"la cuisine";
    
}
//로그인 성공
- (IBAction)LoginBtn:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainPage *mainPage = [storyboard instantiateViewControllerWithIdentifier:@"MainPage"];
    [self.navigationController pushViewController:mainPage animated:YES];
    
    
    
}
//회원가입
- (IBAction)signUpBtn:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SignUpPage *signUp = [storyboard instantiateViewControllerWithIdentifier:@"SignUpPage"];
    [self.navigationController pushViewController:signUp animated:YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
