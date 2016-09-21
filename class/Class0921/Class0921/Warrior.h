//
//  Warrior.h
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;
@interface Warrior : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSInteger magicalPower;
@property NSInteger physicalPower;
@property NSString *name;
@property BOOL isDead;
@property NSString *location;//현재위치
@property NSString *skill;

- (id)jumpto:(NSString *)somewhere;
- (id)cry:(Wizard *)someCharacter;
- (id)shieldAttack:(Wizard *)someCharacter;
- (id)charge:(Wizard *)someCharacter;
@end
