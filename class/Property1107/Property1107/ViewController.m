//
//  ViewController.m
//  Property1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    Person *yang = [[Person alloc] init];
    [yang printPersonInfo];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
