//
//  DataCenter.h
//  AirportApp
//
//  Created by Yang on 2016. 12. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedData;
- (BOOL)signUserID:(NSString *)userID signUserPW:(NSString *)userPW;
- (BOOL)saveUserID:(NSString *)userID saveUserPW:(NSString *)userPW;

@end
