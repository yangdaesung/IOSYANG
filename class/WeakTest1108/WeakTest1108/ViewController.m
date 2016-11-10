//
//  ViewController.m
//  WeakTest1108
//
//  Created by Yang on 2016. 11. 8..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *weakLabel;
@property (strong, nonatomic) IBOutlet UILabel *strongLabel;

@end

@implementation ViewController
- (IBAction)remove:(id)sender {
    [self.weakLabel removeFromSuperview];
    [self.strongLabel removeFromSuperview];
    
    NSLog(@"weak label : %@,strong lavel : %@",self.weakLabel,self.strongLabel);
    
    
}
- (IBAction)reAdd:(id)sender {
    
    [self.view addSubview:self.weakLabel];
    [self.view addSubview:self.strongLabel];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
