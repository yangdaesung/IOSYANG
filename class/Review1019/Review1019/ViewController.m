//
//  ViewController.m
//  Review1019
//
//  Created by Yang on 2016. 10. 19..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *size;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)changeSize:(id)sender {
    
    
    UIStepper *stepper = sender;
    
    CGFloat size = stepper.value;
    self.size.constant = size;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
