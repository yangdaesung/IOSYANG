//
//  AppDelegate.m
//  ViewControllerTest
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Viewcontroller2.h"
#import "ViewControllerWithXib.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//뷰만들기
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //NSBundle에는 nil을 넣어도 된다.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //화살펴 즉 먼저 실행하는것
    [storyboard instantiateInitialViewController];
    //뷰컨트롤러 만든다.
    UINavigationController *vc = [storyboard instantiateInitialViewController];
    ViewController *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"Viewcontroller2"];
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    tabVC.viewControllers = @[vc,vc2];
    
    UITabBarItem *item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:0];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:0];
    vc.tabBarItem = item;
    vc2.tabBarItem = item2;
    

   // ViewControllerWithXib *vcWithX = [[ViewControllerWithXib alloc] init];
    
    //이름이 다를때에는 밑에 껄 사용한다.
//    ViewControllerWithXib *vcWithX = [[ViewControllerWithXib alloc] initWithNibName:@"viewControllerWithXib" bundle:nil];
    
    //네비게이터 만들어진다.
   // UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vcWithX];
    
    //윈도우를 만든다. 사이즈는 스크린의 사이즈를 가져온다.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //첫번째 뷰컨트롤러를 설정해준다.
    self.window.rootViewController = tabVC;
    //가장 기본적인 윈도우가 keyWindow이다.
    [self.window makeKeyAndVisible];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
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
