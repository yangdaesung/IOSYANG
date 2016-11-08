//
//  UserInfomation.h
//  KeyValueProject1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfomation : NSObject

+ (instancetype)sharedUserInfo;

@property NSString *userId;
@property NSString *userPassword;
@property NSString *lastName;
@property NSString *firstName;
@property NSString *fullName;
@property NSString *age;
@property NSString *hobby;

@end
