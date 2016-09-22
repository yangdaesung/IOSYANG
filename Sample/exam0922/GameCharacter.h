//
//  GameCharacter.h
//  exam0922
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
@property NSString *name;
@property NSString *location;
@property BOOL *isDead;


- (id) PhysicalAttack:(GameCharacter *)someone;









@end
