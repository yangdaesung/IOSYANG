//
//  ColoredLabel.m
//  CustomNotofication1031
//
//  Created by Yang on 2016. 10. 31..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ColoredLabel.h"

@interface ColoredLabel ()

@end

@implementation ColoredLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveSettingChange:)
                                                 name:DidChangeSettingNotification
                                               object:nil];
}


- (void)didReceiveSettingChange:(NSNotification *)noti {
    
    UIColor *color = [[noti userInfo] objectForKey:UserInfoKeyLabelTextColor];
    UIFont *font = [[noti userInfo] objectForKey:UserInfoKeyLabelFont];
    
    if ([color isKindOfClass:[UIColor class]] &&
        [font isKindOfClass:[UIFont class]]) {
        [self setTextColor:color];
        [self setFont:font];
    }
    
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
