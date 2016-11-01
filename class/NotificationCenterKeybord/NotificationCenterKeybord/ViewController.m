//
//  ViewController.m
//  NotificationCenterKeybord
//
//  Created by Yang on 2016. 10. 31..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *keybord;
@property (weak, nonatomic) IBOutlet UILabel *coordinat;


@end

@implementation ViewController
- (IBAction)txFieldCoord:(id)sender {
    for (UIView *subview in [[self view] subviews]) {
        if ([subview isFirstResponder]) {
            [subview resignFirstResponder];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveKeyboardChangeNotification:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveKeyboardChangeNotification:)
                                                 name:UIKeyboardDidHideNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveKeyboardChangeNotification:)
                                                 name:UIKeyboardDidChangeFrameNotification
                                               object:nil];
}


- (void)didReceiveKeyboardChangeNotification:(NSNotification *)noti {
    NSLog(@"%@", noti);
    
    if ([[noti name] isEqualToString:UIKeyboardDidShowNotification]) {
        [[self keybord] setText:@"키보드 있음"];
    } else if ([[noti name] isEqualToString:UIKeyboardDidHideNotification]) {
        [[self keybord] setText:@"키보드 없음"];
    }
    
    if ([[noti name] isEqualToString:UIKeyboardDidChangeFrameNotification]) {
        NSValue *frameValue = [[noti userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey];
        
        if ([frameValue isKindOfClass:[NSValue class]]) {
            
            CGRect keyboardFrame = [frameValue CGRectValue];
            
            NSString *frameString = NSStringFromCGRect(keyboardFrame);
            
            [[self coordinat] setText:frameString];
        }
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
