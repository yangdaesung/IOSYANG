//
//  Warrior.h
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameCharacter.h"

@interface Warrior : GameCharacter


- (id) shieldAttack:(GameCharacter *)someone;
- (id) cry:(GameCharacter *)someone;
- (id) jump:(NSString *)where;

@end
