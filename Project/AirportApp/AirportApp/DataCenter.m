//
//  DataCenter.m
//  AirportApp
//
//  Created by Yang on 2016. 12. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "DataCenter.h"
#import "ViewController.h"
#import "SignUpViewController.h"

@implementation DataCenter

+ (instancetype)sharedData{
    
    static DataCenter *datObject = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken,^{
        datObject  =[[self alloc]init];
        
    });
    return datObject;
    
}

//회원가입
- (BOOL)signUserID:(NSString *)userID signUserPW:(NSString *)userPW
{
    NSUserDefaults *userData = [NSUserDefaults standardUserDefaults];
    [userData setObject:userID forKey:@"ID"];
    [userData setObject:userPW forKey:@"PW"];
    [userData synchronize];
    return YES;
}

//로그인
- (BOOL)saveUserID:(NSString *)userID saveUserPW:(NSString *)userPW
{
    userID = [[NSUserDefaults standardUserDefaults] objectForKey:@"ID"];
    userPW = [[NSUserDefaults standardUserDefaults] objectForKey:@"PW"];
    return YES;
}



@end
