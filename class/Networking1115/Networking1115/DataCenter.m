//
//  DataCenter.m
//  Networking1115
//
//  Created by Yang on 2016. 11. 15..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "DataCenter.h"
#import "ViewController.h"

@implementation DataCenter

//싱글톤...
+ (instancetype)sharedManger
{
    static DataCenter *sharedManger = nil;
    
    static dispatch_once_t oneToken;
    
    dispatch_once(&oneToken, ^{
        sharedManger = [[self alloc] init];
    });
    return sharedManger;
}

- (BOOL)saveUserID:(NSString *)userID
{
  NSUserDefaults *userData = [NSUserDefaults standardUserDefaults];
    [userData setObject:userID forKey:@"ID"];
    return YES;
}

- (BOOL)saveImage:(NSString *)imageName
{
    NSUserDefaults *userData = [NSUserDefaults standardUserDefaults];
    [userData setObject:imageName forKey:@"imageName"];
    return YES;
}

- (BOOL)saveImaged:(NSString *)image
{
    NSUserDefaults *userData = [NSUserDefaults standardUserDefaults];
    [userData setObject:image forKey:@"image"];
    return YES;
}

@end
