//
//  Warrior.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior.h"
#import "GameClass.h"
@implementation Warrior

//쉴트 어택 공격 !
-(id)shieldAttack:(GameClass *)who {
    
    NSUInteger attack = who.health;
    who.health = attack - who.health;
    
  NSLog(@"%@에게 %ld만큼 피해를 입히고 , 체력이 %lu에서 %lu로 변경되었습니다.",
        who.name,self.physicalPower,attack,who.health);
    return nil;
    
}

-(id)charge:(GameClass *)who {
    
    NSUInteger chargeAttack = who.health;
    who.health = chargeAttack - who.health;
    
    NSLog(@"%@에게 %ld만큼 피해를 입히고 , 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,self.physicalPower,chargeAttack,who.health);
    return nil;
    
}

-(id)cry:(GameClass *)who {
    
    NSUInteger cry = who.health;
    who.health = cry - who.health;
    
    NSLog(@"%@에게 %ld만큼 피해를 입히고 공포 효과에 걸렸습니다.체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,self.magicalpower,cry,who.health);
    return nil;
}

-(id)jump:(NSString *)where {
    
    NSString *jump = self.location;
    self.location = where;
    
    NSLog(@"%@에서 %@로 점프 하였습니다.",self.location,jump);
    return nil;
    
}



@end
