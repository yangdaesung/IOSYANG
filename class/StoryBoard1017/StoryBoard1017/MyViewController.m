//
//  MyViewController.m
//  StoryBoard1017
//
//  Created by Yang on 2016. 10. 17..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITextFieldDelegate>

@property (nonatomic) IBOutlet UILabel *label;
@property (nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UITextField *idText;
@property (weak, nonatomic) IBOutlet UITextField *pwText;
@property (nonatomic) IBOutlet UISlider *slider;
@property (nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIView *LabelBlack;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = @"yang";
    self.label.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.label];

    self.redSlider.tintColor = [UIColor redColor];
    self.blueSlider.tintColor = [UIColor blueColor];
    self.greenSlider.tintColor =[UIColor greenColor];
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clickButton:(id)sender
{
    if ([sender isKindOfClass:[UIBarButtonItem class]]) {
        
        UIButton *button = sender;
        NSLog(@"button title %@,tag %ld",[[button titleLabel] text], [button tag]);
    }else {
        NSLog(@"버튼이 아닙니다.");
    }    
}

- (IBAction)sliderValueChanged:(id)sender
{
    if ([sender isKindOfClass:[UISlider class]]) {
        UISlider *slider = sender;
        
        NSLog(@"slider value : %f", slider.value);
    }
}

- (IBAction)segmentSelectionChanged:(id)sender
{
    if ([sender isKindOfClass:[UISegmentedControl class]]) {
        
        UISegmentedControl *control = sender;
        NSLog(@"segment value : %ld",control.selectedSegmentIndex);
    }
}

- (IBAction)switchControl:(id)sender
{
    if ([sender isKindOfClass:[UISwitch class]]) {
        UISwitch *mySwitch = sender;
        NSLog(@"switch value : %@",mySwitch.accessibilityValue);
    }
    
}

- (IBAction)sliderValue:(id)sender
{
    float redValue = self.redSlider.value;
    float greenValue = self.greenSlider.value;
    float blueValue = self.blueSlider.value;
    
    self.LabelBlack.backgroundColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1];

}

- (IBAction)allact:(id)sender
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"와우!"
                                                                   message:@"확인"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:okBtn];
    [self presentViewController:alert animated:YES completion:nil];

    
    
    
    
}
//자동로그인 !!버튼
- (IBAction)clickAutoLogin:(id)sender

{
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *autoLogin = (UIButton *)sender;
        
        [autoLogin setSelected:![autoLogin isSelected]];
    }
    
    
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
