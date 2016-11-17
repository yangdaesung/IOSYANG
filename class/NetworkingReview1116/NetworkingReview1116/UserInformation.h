//
//  UserInformation.h
//  NetworkingReview1116
//
//  Created by Yang on 2016. 11. 16..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInformation : NSObject

@property NSString *userId;
@property NSArray *imageInfoList;

+ (instancetype)sharedUserInfo;

@end
