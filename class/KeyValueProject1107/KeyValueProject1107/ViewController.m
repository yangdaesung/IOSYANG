//
//  ViewController.m
//  KeyValueProject1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "UnViewController.h"
#import "UserInfomation.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *IdLabel;
@property (weak, nonatomic) IBOutlet UILabel *pwLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *hobbyLabel;

@end

@implementation ViewController


//?? 왜하는 걸까...
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.ageLabel.text  = [[UserInfomation sharedUserInfo] age];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UserInfomation sharedUserInfo] setUserId:@"yang"];
    [[UserInfomation sharedUserInfo] setUserPassword:@"diddid12"];
    
    [[UserInfomation sharedUserInfo] addObserver:self
                                      forKeyPath:@"userId"
                                         options:NSKeyValueObservingOptionNew
                                         context:nil];
    
    [[UserInfomation sharedUserInfo] addObserver:self
                                      forKeyPath:@"userPassword"
                                         options:NSKeyValueObservingOptionNew
                                         context:nil];
    
    [[UserInfomation sharedUserInfo] addObserver:self
                                      forKeyPath:@"fullName"
                                         options:NSKeyValueObservingOptionNew
                                         context:nil];
    
    
    
    
    
    
    
    
    
    
    
}


- (IBAction)userEdit:(id)sender {
    
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
