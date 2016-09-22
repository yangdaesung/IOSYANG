//
//  Wizard.h
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameCharacter.h"

@interface Wizard : GameCharacter



- (id)magicMissle:(GameCharacter *)someone;
- (id)fireball:(GameCharacter *)someone;
- (id)teleport:(NSString *)where;


@end
