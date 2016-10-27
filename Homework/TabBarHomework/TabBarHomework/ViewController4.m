//
//  ViewController4.m
//  TabBarHomework
//
//  Created by Yang on 2016. 10. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController4.h"
#import "ViewController.h"
#import "ViewController5.h"
@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController popViewControllerAnimated:YES];
}



- (IBAction)onViewTouch2:(id)sender
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController5 *view = [storyboard instantiateViewControllerWithIdentifier:@"ViewController5"];
    
    [self.navigationController pushViewController:view animated:YES];
    
    
    
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
