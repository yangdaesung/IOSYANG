//
//  DeathNight.h
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameClass.h"

@interface DeathNight : GameClass

@property NSUInteger rage;






- (id)deathAttack:(GameClass *)who;
- (id)swoardDefense:(GameClass *)who;
- (id)touchofDeath:(GameClass *)who;


@end
