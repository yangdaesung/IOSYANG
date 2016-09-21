//
//  Wizard.h
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;
@interface Wizard : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSInteger magicalPower;
@property NSInteger physicalPower;
@property NSString *name;
@property BOOL isDead;
@property NSString *home;
@property NSString *location; // 캐릭터의 위치
@property NSString *icewall;


- (id)fireball:(Warrior *)who;
- (id)icespear:(Warrior *)who;
- (id)icewell:(Warrior *)who;
- (id)telfort:(NSString *)where;


@end
