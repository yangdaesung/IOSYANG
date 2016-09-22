//
//  Wizard.h
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

//GmaeCharacter에 상속받은 상태

@interface Wizard : GameCharacter


- (id)magicalAttackto:(GameCharacter *)someone;
- (id)teleportTo:(NSString *)location;
- (id)windstormTo:(GameCharacter *)someone;


@end
