//
//  Wizard.m
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"
@implementation Wizard
-(id)fireball:(Warrior *)who {
    //마법사가 전사에게 공격
    NSUInteger warrr = who.health;
    //공격
    who.health = warrr - self.magicalPower;
    
    NSLog(@"마법사가 전사에게 %ld만큼 데미지를 입혔습니다.\n 전사의 체력이 %lu에서 %lu로 변경되었습니다."
          ,self.magicalPower,warrr,who.health);
    return nil;
}

-(id)telfort:(NSString *)where {
    
    // 현재위치
    NSString *currentLocation = self.location;
    
    self.location = where;
    //마법사가 어느 장소로 이동
    NSLog(@"마법사가 %@에서 %@로 이동하였습니다.", currentLocation, self.location);
    
    return nil;
}

-(id)icewell:(Warrior *)who {
    //마법사가 아이스월을 활성화
    
    //전사공격이 실패해서 타격을 입는다.
    NSUInteger warr = who.health;
    NSString *ddd = who.skill;
    NSString *dada = self.icewall;
    who.health = warr - self.magicalPower;
    
    NSLog(@"전사가 %@로 공격했으나 %@으로 막아서 %ld만큼 데미지를 입었습니다. \n 전사의체력이 %lu에서 %lu로 변경되었습니다."
          ,ddd,dada,self.magicalPower,warr,who.health);
    return nil;
    
}

-(id)icespear:(Warrior *)who {
    //마법사가 아이스스피어로 공격
    
    NSUInteger whh = who.health;
    
    who.health = whh - self.magicalPower;
    
    NSLog(@"마법사가 전사에게 %ld만큼 데미지를 입혔습니다.\n 전사의 체력이 %lu에서 %lu로 변경되었습니다."
          ,self.magicalPower,whh,who.health);
    
    return nil;

}

@end
