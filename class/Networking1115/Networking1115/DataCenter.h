//
//  DataCenter.h
//  Networking1115
//
//  Created by Yang on 2016. 11. 15..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedManger;
- (BOOL)saveUserID:(NSString *)userID;
- (BOOL)saveImage:(NSString *)imageName;
- (BOOL)saveImaged:(NSString *)image;

@end
