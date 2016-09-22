//
//  Warrior.m
//  exam0921
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior
- (id)sheildAttack:(Wizard *)who {
    //방패공격으로 마법사를 공격하다
    NSUInteger dada = who.health;
    //방패공격
    who.health = dada -self.physicalPower;
    NSLog(@"마법사에게 %ld의 피해를 입혔습니다.\n 체력이 %lu 에서 %lu로 변경되었습니다.",
          self.physicalPower,dada,who.health);
   
    return nil;
    
}

- (id)cry:(Wizard *)who {
    
    NSUInteger hamsung = who.health;
    
    who.health = hamsung - self.magicPower;
    
    NSLog(@"마법사에게 %ld의 피해를 입혔습니다.\n 체력이 %lu에서 %lu로 변경되었습니다.",
          self.magicPower,hamsung,who.health);
    return nil;
    
}

@end
