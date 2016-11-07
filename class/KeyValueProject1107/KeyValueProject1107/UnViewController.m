//
//  UnViewController.m
//  KeyValueProject1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "UnViewController.h"
#import "ViewController.h"

@interface UnViewController ()


@property (weak, nonatomic) IBOutlet UILabel *unIdLabel;
@property (weak, nonatomic) IBOutlet UILabel *unPwLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *ageTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *hobbyTextLabel;

@property NSInteger count;
@property NSString *name;
@property NSInteger age;
@property NSString *hobby;

@end

@implementation UnViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    
}
- (IBAction)UserSaved:(id)sender {
    
        self.nameTextLabel.text = self.name;
        self.ageTextLabel.text = [NSString stringWithFormat:@"%ld",self.count];
        self.hobbyTextLabel.text = self.hobby;
    
}


- (NSString *)saved
{
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
