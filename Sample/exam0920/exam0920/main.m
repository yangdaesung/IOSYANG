//
//  main.m
//  exam0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
  
    Warrior *daesung = [[Warrior alloc] init];
    Warrior *daeho = [[Warrior alloc] init];
    
    daesung.health = @"800";
    daesung.rage = @"100";
    daesung.strength = @"80";
    daesung.physicalAttack = @"150";
    
    daeho.health = @"790";
    daeho.rage = @"100";
    daeho.strength = @"80";
    daeho.physicalAttack = @"144";
    daeho.name = @"방어자";
    
    NSLog(@"daesung health=%@, rage=%@",daesung.health,daesung.rage);
    [daesung cry:@"오크" charge:@"돌진" run:@"점프"];
    
    
    Wizard *cook = [[Wizard alloc] init];
    Wizard *ceek = [[Wizard alloc] init];
    
    cook.health = @"450";
    cook.mana = @"700";
    cook.magicalPower = @"200";
    cook.intellect = @"80";
    
    
    ceek.health = @"500";
    ceek.mana = @"650";
    ceek.magicalPower = @"190";
    ceek.intellect = @"75";
    ceek.name = @"양대";
    
    [daesung shildAttack:ceek.name];
    [ceek fireball:daeho.name];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
