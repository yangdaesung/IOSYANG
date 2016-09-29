//
//  ViewController.m
//  Class0929
//
//  Created by Yang on 2016. 9. 29..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
/*    [super viewDidLoad];
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 340, 100)];
    newView.backgroundColor = [UIColor redColor];
    newView.alpha = 0.5;
    [self.view addSubview:newView];
    
    UIView *newSubView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 340, 100)];
    newSubView.backgroundColor = [UIColor blackColor];
    [newView addSubview:newSubView];

*/
    
/*
    //첫번째 사각형
    UIView *myOne = [[UIView alloc] initWithFrame:CGRectMake(15,15,self.view.frame.size.width-30,self.view.frame.size.height-30)] ;
    myOne.backgroundColor = [UIColor blackColor];
    [self.view addSubview:myOne];
    
    //두번째 사각형
    UIView *myTwo = [[UIView alloc] initWithFrame:CGRectMake(15,15,myOne.frame.size.width-30,myOne.frame.size.height-30)] ;
    myTwo.backgroundColor = [UIColor yellowColor];
    [myOne addSubview:myTwo];
    
    //세번째 사각형
    UIView *myThree = [[UIView alloc] initWithFrame:CGRectMake(15,15,myTwo.frame.size.width-30,myTwo.frame.size.height-30)] ;
    myThree.backgroundColor = [UIColor redColor];
    [myTwo addSubview:myThree];
 */
    
    /*
    UIView *first = [[UIView alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height/2-100, self.view.frame.size.width-100, 50)];
    first.backgroundColor = [UIColor redColor];
    [self.view addSubview:first];
     */
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height/2-100, self.view.frame.size.width-100, 200)];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    UIView *left = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 200)];
    left.backgroundColor = [UIColor yellowColor];
    [view addSubview:left];
    UIView *right = [[UIView alloc] initWithFrame:CGRectMake(255, 0, 20, 200)];
    right.backgroundColor = [UIColor redColor];
    [view addSubview:right];
    UIView *top = [[UIView alloc] initWithFrame:CGRectMake(0,0,255,20)];
    top.backgroundColor = [UIColor blueColor];
    [view addSubview:top];
    UIView *bottom = [[UIView alloc]initWithFrame:CGRectMake(0, 200, 275,20)];
    bottom.backgroundColor = [UIColor brownColor];
    [view addSubview:bottom];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
