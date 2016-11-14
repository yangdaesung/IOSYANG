//
//  ViewController.m
//  NSURL1114
//
//  Created by Yang on 2016. 11. 14..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property UIActivityIndicatorView *act;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    self.act = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    
    [self.view addSubview:self.act];
    
    
    [self image];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)image
{
    sleep(1);
    
    NSURL *thumbnailURL = [NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/2618B6385785D30B18932D"];
    
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [self.act startAnimating];
    
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL
                                    completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                        
                                        
                                        if (data) {
                                            UIImage *image = [UIImage imageWithData:data];
                                            if(image){
                                                dispatch_async(dispatch_get_main_queue(),
                                                               ^{
                                                                   self.imageView.image = image;
                                                               });
                                            }
                                        }
                                       [self.act stopAnimating];
                              }];

    [task resume];
}
@end
