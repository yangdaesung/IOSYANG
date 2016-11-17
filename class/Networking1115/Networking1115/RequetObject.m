//
//  RequetObject.m
//  Networking1115
//
//  Created by Yang on 2016. 11. 15..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "RequetObject.h"
#import "ViewController.h"

@interface RequetObject ()

@end

@implementation RequetObject

+ (instancetype)RequetManger
{
    static RequetObject *RequetManger = nil;
    
    static dispatch_once_t oneToken;
    
    dispatch_once(&oneToken, ^{
        RequetManger = [[self alloc] init];
    });
    return RequetManger;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *thumbnailURL = [NSURL URLWithString:@"http://iosschool.yagom.net:8080/api/list?user_id=200"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL
                                    completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
                                        if (data) {
                                            UIImage *image = [UIImage imageWithData:data];
                                       
                                        }
                                    }];
    [task resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
