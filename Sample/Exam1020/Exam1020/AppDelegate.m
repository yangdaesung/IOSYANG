//
//  AppDelegate.m
//  Exam1020
//
//  Created by Yang on 2016. 10. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIViewController *rootViewController = nil;
    UIStoryboard *firstStoryboard = nil;
    
    BOOL isUserLogied = YES;
    
    if (isUserLogied) {
        firstStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    }else {
        firstStoryboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    }
    
    rootViewController = [firstStoryboard instantiateInitialViewController];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.window setRootViewController:rootViewController];
    
    [self.window makeKeyAndVisible];
    return YES;
    

    
    
    
}


//스토리보드 없이 보드 만들기
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    ViewController *rootViewController = [[ViewController alloc] init];
//    rootViewController.view.backgroundColor = [UIColor lightGrayColor];
 
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
 
    

}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
