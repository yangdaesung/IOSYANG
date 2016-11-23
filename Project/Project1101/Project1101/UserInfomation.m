//
//  UserInfomation.m
//  Project1101
//
//  Created by Yang on 2016. 11. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "UserInfomation.h"

@implementation UserInfomation


+(instancetype)init
{
    static UserInfomation *sharedInfo = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInfo = [[UserInfomation alloc] init];
    });

    return sharedInfo;
    
}

@end
