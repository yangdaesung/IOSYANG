//
//  main.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameClass.h"
#import "DeathNight.h"
#import "Dragon.h"
#import "Druid.h"
#import "Vehicle.h"
#import "Item.h"
#import "PhysicalWepon.h"
#import "MagicalWepon.h"
int main(int argc, const char * argv[]) {

    DeathNight *jack = [[DeathNight alloc] init];
    jack.name = @"죽기";
    jack.health = 600;
    jack.rage = 100;
    jack.physicalPower = 100;
    jack.magicalpower = 20;
    jack.isDead = NO;
    jack.speed = 30;
    
    Dragon *isera = [[Dragon alloc] init];
    isera.name = @"이세라";
    isera.health = 8000;
    isera.mana = 4000;
    isera.physicalPower = 250;
    isera.magicalpower = 300;
    isera.isDead = NO;
    
    
    Druid *mark = [[Druid alloc] initWithName:@"마크" health:550 mana:450 physicalPower:120 magicalPower:40 isDead:NO speed:80];
    Vehicle *lion = [[Vehicle alloc] init];
    lion.name = @"라이온";
    lion.speed = 200;
    
    MagicalWepon *madd = [[MagicalWepon alloc] init];
    madd.name = @"죽음의지팡이";
    madd.magicalDamege = 500;
   
    PhysicalWepon *aex = [[PhysicalWepon alloc] init];
    aex.name = @"죽음의 도끼";
    aex.physicalDamege = 450;
    
    
    [lion sit:jack speed:80];
    [lion sit:mark speed:100];
    [mark typoon:isera];
    [jack deathAttack:isera];
    [mark PhysicalAttack:isera];
    
    [aex add:jack];
    [madd aaadd:mark];
    [jack swoardDefense:isera];
    
    [mark bearForm];
    [mark eluneArrow:isera];
    [jack deathAttack:isera];
    
    
    
    
    
    
    
    
    
    return 0;
}
