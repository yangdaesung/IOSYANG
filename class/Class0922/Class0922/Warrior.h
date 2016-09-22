//
//  Warrior.h
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

//클래스 읽는 방법


@interface Warrior : GameCharacter



- (id)jumpTo:(NSString *)location;
- (id)smashTo:(GameCharacter *)someone;


@end
