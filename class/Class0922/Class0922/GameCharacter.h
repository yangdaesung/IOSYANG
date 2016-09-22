//
//  GameCharacter.h
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property BOOL isDead;
@property NSString *name;
@property NSString *weapon;


- (id)physicalAttackto:(GameCharacter *)someone;


@end
