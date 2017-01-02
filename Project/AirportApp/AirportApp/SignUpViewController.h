//
//  SignUpViewController.h
//  AirportApp
//
//  Created by Yang on 2016. 12. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface SignUpViewController : ViewController
@property (strong, nonatomic) IBOutlet UITextField *idSignLabel;
@property (strong, nonatomic) IBOutlet UITextField *pwSignLabel;
@property (strong, nonatomic) IBOutlet UITextField *pwConfirmLabel;
@property (strong, nonatomic) IBOutlet UITextField *emailLabel;
@property (strong, nonatomic) IBOutlet UIButton *signUpBtn;

@end
