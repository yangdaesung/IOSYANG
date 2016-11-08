//
//  UserInfomation.m
//  KeyValueProject1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "UserInfomation.h"

@implementation UserInfomation

+ (instancetype)sharedUserInfo {
    static UserInfomation *object = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        if (object == nil) {
            object = [[UserInfomation alloc] init];
        }
    });
    return object;
}





@end
