//
//  DataCenter.m
//  LoginPage1024
//
//  Created by Yang on 2016. 11. 2..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "DataCenter.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"

@implementation DataCenter

//싱글턴 만들기
+ (instancetype)sharedManager
{
    static DataCenter *sharedMyManager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

////회원가입
- (BOOL)joinUserID:(NSString *)userID userPW:(NSString *)userPW
{
    NSUserDefaults *userdata = [NSUserDefaults standardUserDefaults];
    [userdata setObject:userID forKey:@"ID"];
    [userdata setObject:userPW forKey:@"PW"];
    [userdata synchronize];
    return YES;
   
}


- (BOOL)haveUserID:(NSString *)userID userPW:(NSString *)userPW
{
    userID = [[NSUserDefaults standardUserDefaults]objectForKey:@"ID"];
    userPW = [[NSUserDefaults standardUserDefaults]objectForKey:@"PW"];
    return YES;
    
}

////아이디 저장
- (void)setUserID:(NSString *)userID
{
  
    
}


@end
