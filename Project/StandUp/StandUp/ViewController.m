//
//  ViewController.m
//  StandUp
//
//  Created by Yang on 2016. 11. 3..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *checkBtn;
@property (weak, nonatomic) IBOutlet UIStackView *oneBtn;
@property (weak, nonatomic) IBOutlet UIButton *one1;

@property (weak, nonatomic) IBOutlet UIButton *one2;

@property UIView *coverView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [ckBtn setImage:[UIImage imageNamed:@"체크1.png"] forState:UIControlStateNormal];
    [ckBtn setImage:[UIImage imageNamed:@"체크박스1.png"] forState:UIControlStateSelected];
    //ckBtn.imageView.alpha
    [ckBtn addTarget:self action:@selector(chkBtnHandler:) forControlEvents:UIControlEventTouchUpInside];
    
    [ckBtn setTitle:@"no check" forState:UIControlStateNormal];
    [ckBtn setTitle:@"check" forState:UIControlStateSelected];
    
    [cenView addSubview:ckBtn];
    
    
    
}



- (IBAction)oneBtn:(id)sender {
    
    [(UIButton *)sender setSelected:![(UIButton *)sender isSelected]];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
