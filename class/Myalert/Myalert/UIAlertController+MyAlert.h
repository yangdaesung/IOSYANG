//
//  UIAlertController+MyAlert.h
//  Myalert
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (MyAlert)




+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle okTitle:(NSString *)okTitle okHandler:(void (^)(UIAlertAction *action))handler;




@end
