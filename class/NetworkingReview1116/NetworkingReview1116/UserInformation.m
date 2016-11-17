//
//  UserInformation.m
//  NetworkingReview1116
//
//  Created by Yang on 2016. 11. 16..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "UserInformation.h"

@implementation UserInformation

+ (instancetype)sharedUserInfo
{
    static UserInformation *sharedUserInfo = nil;
    
    static dispatch_once_t oneToken;
    
    dispatch_once(&oneToken, ^{
        sharedUserInfo =[[self alloc] init];
        
    });
    return sharedUserInfo;
    
}


@end
