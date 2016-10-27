//
//  ViewController.m
//  TabBarHomework
//
//  Created by Yang on 2016. 10. 25..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "ViewController4.h"
#import "ViewController5.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
 
}
- (IBAction)onViewTouch:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController4 *view = [storyboard instantiateViewControllerWithIdentifier:@"ViewController4"];
    
    [self.navigationController pushViewController:view animated:YES];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
