//
//  main.m
//  exam0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
   
    Warrior *cooker = [[Warrior alloc] init];
    cooker.health = 500;
    cooker.mana = 200;
    cooker.physicalPower = 60;
    cooker.magicPower = 10;
    cooker.name = @"전사";
    
    
    Wizard *yuri = [[Wizard alloc] init];
    yuri.health = 400;
    yuri.mana = 400;
    yuri.physicalPower = 10;
    yuri.magicPower = 70;
    yuri.name = @"마법사";
    
    
   
    [cooker sheildAttack:yuri];
    

    NSLog(@"%5d",50);
    NSLog(@"%7.2f",332.24444);
    
    return 0;
}
