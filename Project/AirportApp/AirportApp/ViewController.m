//
//  ViewController.m
//  AirportApp
//
//  Created by Yang on 2016. 12. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}
- (IBAction)loginSuccess:(id)sender {
    
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"ID"]isEqualToString:self.IdLabel.text],
        [[[NSUserDefaults standardUserDefaults]objectForKey:@"PW"]isEqualToString:self.pwLabel.text]) {
        
        UIStoryboard *loginPage = [UIStoryboard storyboardWithName:@"MainPage" bundle:nil];
        
        ViewController *View = [loginPage instantiateViewControllerWithIdentifier:@"Tabbar"];
        
        [self.navigationController pushViewController:View animated:YES ];
    }
    
    
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

//키보드 내리기
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


@end
