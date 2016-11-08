//
//  UnViewController.m
//  KeyValueProject1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "UnViewController.h"
#import "ViewController.h"
#import "UserInfomation.h"

@interface UnViewController ()


@property (weak, nonatomic) IBOutlet UILabel *unIdLabel;
@property (weak, nonatomic) IBOutlet UILabel *unPwLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *ageTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *hobbyTextLabel;


@end

@implementation UnViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UserInfomation *info = [UserInfomation sharedUserInfo];
    self.unIdLabel.text = info.userId;
    self.unPwLabel.text = info.userPassword;
    self.nameTextLabel.text = info.fullName;
    self.ageTextLabel.text = info.age;
    self.hobbyTextLabel.text = info.hobby;
    
    
    
}
- (IBAction)UserSaved:(id)sender {
    
    UserInfomation *info = [UserInfomation sharedUserInfo];
    
    info.fullName = self.nameTextLabel.text;
    info.age = self.ageTextLabel.text;
    info.hobby = self.hobbyTextLabel.text;
    
    
    [self navigationController popvi]
}

//
//- (NSString *)saved
//{
//    
//    
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
