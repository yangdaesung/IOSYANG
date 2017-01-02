//
//  WorldTimeViewController.m
//  AirportApp
//
//  Created by Yang on 2016. 12. 29..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "WorldTimeViewController.h"
#import "UIImageView+LBBlurredImage.h"

@interface WorldTimeViewController ()

@property (weak, nonatomic) UIImage *moring;
@property (weak, nonatomic) UIImage *afterNoon;
@property (weak, nonatomic) UIImage *night;
@property (weak, nonatomic) UIImage *sunset;

@end

@implementation WorldTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.moring = [UIImage imageNamed:@"아침.jpg"];
    self.backImage.image = [UIImage imageNamed:@"저녁.jpg"];
    [self.view addSubview:self.backImage];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
