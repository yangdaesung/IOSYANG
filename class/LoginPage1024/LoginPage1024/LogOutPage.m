//
//  LogOutPage.m
//  LoginPage1024
//
//  Created by Yang on 2016. 11. 3..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "LogOutPage.h"

@implementation LogOutPage


//로그아웃 하고 메인뷰로 돌아감
- (IBAction)logoutAction:(id)sender
{
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
