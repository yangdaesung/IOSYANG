//
//  Viewcontroller2.m
//  ViewControllerTest
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Viewcontroller2.h"

@interface Viewcontroller2 ()

@end

@implementation Viewcontroller2

- (void)loadView
{
    [super loadView];
    NSLog(@"load View");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"will appear");
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"view Layout");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"view subview");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"appear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"disappear");
}

-(void)viewdidDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"will Disappear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTouchsideBtn:(id)sender
{
    //present
    //[self dismissViewControllerAnimated:YES completion:nil];
    //pop
    [self.navigationController popViewControllerAnimated:YES];
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
