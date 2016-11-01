//
//  MyAutomaticField.m
//  Precompiled1031
//
//  Created by Yang on 2016. 10. 31..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "MyAutomaticField.h"

@interface MyAutomaticField () <UITextFieldDelegate>

@end

@implementation MyAutomaticField

//스토리보드 초기화 할때 나오는 메소드..... 이해가안됨..
//스토리보드에서 호출이 될때 불려오는 메소드
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    if ([self delegate] == nil) {
        [self setDelegate:self];
    }
}

//Return 키 누르면 키보드 내려간다.
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField endEditing:YES];
    return YES;
}

@end
