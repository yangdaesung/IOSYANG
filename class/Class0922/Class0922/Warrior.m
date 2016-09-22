//
//  Warrior.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"
#import "GameCharacter.h"

@implementation Warrior

- (id)smashTo:(GameCharacter *)someone {
    
    NSUInteger cook = someone.health;
    NSString *sometwo = someone.name;
    someone.health = cook - self.physicalPower;
    
    NSLog(@"전사는 %@에게 %ld만큼 피해를 입혔습니다.\n 체력이 %lu에서 %lu로 변경 되었습니다."
          ,sometwo,self.physicalPower,cook,someone.health);
    
    return nil;
}
    
 
    
    
@end
