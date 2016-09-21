//
//  Warrior.m
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior
-(id)shieldAttack:(Wizard *)someCharacter {
    //전사의 물리 공격력 만큼 마법사의 체력을 감소
    
    //마법사의 이전 체력
    NSUInteger originhealth = someCharacter.health;
    
    //공격 !!
    someCharacter.health = originhealth - self.physicalPower;
    
    //물리공격력
    //self.physicalPower
    
    
    //마법사의 이후 체력
    NSLog(@"전사가 마법사에게 물리 공격을 가하여 %ld만큼의 데미지를 입혔습니다.\n마법사의 체력이 %lu에서 %lu로 변경 되었습니다.",self.physicalPower,originhealth,someCharacter.health);

    //전사가 마법사에게 물리 공격을 가하여
    //xx마늠의 데미지를 입혔습니다.
    //마법사의 체력이 xx에서 xx으로 변경되었습니다.
    return  nil;
}

-(id)cry:(Wizard *)someCharacter {
//함성을 질러 공격 체력감소
    
    NSUInteger origin = someCharacter.health;
    
    someCharacter.health = origin - self.magicalPower;
    
    NSLog(@"전사가 마법사에게 마법 공격을 가하여 %ld만큼 데미지를 입혔습니다.\n마법사의 체력이 %lu에서 %lu로 변경되었습니다.",
          self.magicalPower,origin,someCharacter.health);
    return nil;
    
}

-(id)jumpto:(NSString *)somewhere {
    //전사가 적앞으로 점프하다.
    
    //현재위치
    NSString *gogo = self.location;
    //점프하다.
    self.location = somewhere;
    
    NSLog(@"전사가 %@에서 %@으로 점프했습니다.",gogo,self.location);
    return nil;
    
}


-(id)charge:(Wizard *)someCharacter {
    //전사가 돌격
    
    NSUInteger gege = someCharacter.health;
    //공격하다.
    someCharacter.health = gege - self.physicalPower;
    NSLog(@"전사가 마법사에게 %ld만큼 데미지를 입혔습니다.\n 마법사의 체력이 %lu에서 %lu로 변경되었습니다.",
          self.physicalPower,gege,someCharacter.health);
    return nil;
}









@end
