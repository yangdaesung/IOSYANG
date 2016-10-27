//
//  ViewController2.m
//  TabBarHomework
//
//  Created by Yang on 2016. 10. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController2.h"
#import "AppDelegate.h"
#import "ViewController6.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    [storyboard instantiateInitialViewController];
    

    
    
}

- (IBAction)onViewTouch3:(id)sender
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController6 *view = [storyboard instantiateViewControllerWithIdentifier:@"ViewController6"];
    
    [self.navigationController pushViewController:view animated:YES];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)view2:(id)sender
{
    
    
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
