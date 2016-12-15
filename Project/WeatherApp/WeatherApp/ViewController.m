//
//  ViewController.m
//  WeatherApp
//
//  Created by Yang on 2016. 11. 29..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
    manger.responseSerializer = [AFJSONResponseSerializer serializer];
    
    
    NSString *url = @"http://api.openweathermap.org/data/2.5/forecast";
    
    [manger GET:url
     parameters:@{@"q":@"seoul",
                             @"appid":@"2de143494c0b295cca9337e1e96b00e0"}
       progress:nil
        success:^(NSURLSessionTask *task, id responseObject) {
            NSLog(@"%@", responseObject);
        }failure:^(NSURLSessionTask *operation, NSError *error) {
            NSLog(@"%@", error);
        }];
    
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
