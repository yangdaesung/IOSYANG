//
//  Warrior.m
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior.h"
#import "GameCharacter.h"

@implementation Warrior


//전사는 다른 전사에게 피해를 입혔다.
- (id)shieldAttack:(GameCharacter *)someone {
    
    NSUInteger who = someone.health;
    NSString *cook = someone.name;
    
    someone.health = who - self.physicalPower;
    NSLog(@ "전사는 %@에게 %ld만큼 피해를 입히고/n 체력이 %lu에서 %lu만큼 감소됐습니다.",
          cook,self.physicalPower,who,someone.health);
    return nil;
    
    
}
//전사는 현재 위치에서 다른곳으로 점프했다.
- (id)jump:(NSString *)where {
    
    NSString *ceek = self.location;
    self.location = where;
    
    NSLog(@"전사는 %@에서 %@로 점프했다.",ceek,where);
    return nil;
    
}

//전사는 마법사에게 피해를 입혔다.
- (id)cry:(GameCharacter *)someone {
    
    NSUInteger jack = someone.health;
    
    someone.health = jack - self.magicalPower;
    NSLog(@"마법사에게 %ld만큼 피해를 입히고\n 체력이 %lu에서 %lu만큼 감소됐습니다.",
          self.magicalPower,jack,someone.health);
    return nil;
}
@end
