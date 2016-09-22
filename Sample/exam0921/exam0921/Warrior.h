//
//  Warrior.h
//  exam0921
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Wizard;
@interface Warrior : NSObject
@property NSUInteger health;
@property NSUInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicPower;
@property NSString *name;


- (id)charge:(Wizard *)who;
- (id)cry:(Wizard *)who;
- (id)sheildAttack:(Wizard *)who;
- (id)PhysicalAttack:(Wizard *)who;
- (id)jumo:(NSString *)where;




@end
