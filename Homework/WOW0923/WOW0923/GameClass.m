//
//  GameClass.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameClass.h"

@implementation GameClass

//캐릭터 기본공격 데미지 !!
-(id)PhysicalAttack:(GameClass *)who {
    
    NSUInteger call = who.health;
    who.health = call - self.physicalPower;
    
     NSLog(@"%@에게 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",who.name,self.physicalPower,call,who.health);
    
    return nil;
}




//캐릭터,몬스터 기본 베이스 넣기 !
-(instancetype)initWithName:(NSString *)name health:(NSUInteger)health mana:(NSUInteger)mana physicalPower:(NSUInteger)physicalPower magicalPower:(NSUInteger)magicalPower isDead:(BOOL)isDead
                      speed:(NSUInteger)Speed{
    self.name = name;
    self.health = health;
    self.mana = mana;
    self.physicalPower = physicalPower;
    self.magicalpower = magicalPower;
    self.isDead = isDead;
    self.speed = Speed;
    
    return self;
}


@end
