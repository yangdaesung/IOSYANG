//
//  Warrior.h
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameClass.h"

@interface Warrior : GameClass

@property NSUInteger rage;





- (id)shieldAttack:(GameClass *)who;
- (id)charge:(GameClass *)who;
- (id)cry:(GameClass *)who;
- (id)jump:(NSString *)where;





@end
