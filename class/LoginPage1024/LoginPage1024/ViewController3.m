//
//  ViewController3.m
//  LoginPage1024
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController2.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signupPageBtn:(id)sender
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController2 *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    
    [self.navigationController pushViewController:vc2 animated:YES];

  
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
