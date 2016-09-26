//
//  GameClass.h
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameClass.h"
@interface GameClass : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSString *name;
@property BOOL isDead;
@property NSUInteger physicalPower;
@property NSUInteger magicalpower;
@property NSUInteger speed;

- (id) PhysicalAttack:(GameClass *)who;

//캐릭터 능력
- (instancetype)initWithName:(NSString *)name health:(NSUInteger)health mana:(NSUInteger)mana
               physicalPower:(NSUInteger)physicalPower magicalPower:(NSUInteger)magicalPower
                      isDead:(BOOL)isDead speed:(NSUInteger)Speed;




@end
