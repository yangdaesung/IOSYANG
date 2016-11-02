//
//  DataCenter.h
//  LoginPage1024
//
//  Created by Yang on 2016. 11. 2..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property NSUserDefaults *userData;

+ (instancetype)sharedManager;

- (BOOL)joinUserID:(NSString *)userID userPW:(NSString *)userPW;
- (void)setUserID:(NSString *)userID;
@end
