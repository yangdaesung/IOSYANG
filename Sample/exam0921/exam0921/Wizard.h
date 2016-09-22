//
//  Wizard.h
//  exam0921
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Warrior;
@interface Wizard : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicPower;
@property NSString *name;



- (id)fireball:(Warrior *)who;
- (id)icespear:(Warrior *)who;
- (id)thunderBolt:(Warrior *)who;
- (id)blink:(NSString *)who;


@end
