//
//  main.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "human.h"
#import "wizard.h"
#import "warrior.h"
#import "priest.h"
#import "Warrior2.h"
#import "wizard2.h"

int main(int argc, const char * argv[]) {
   
    
    human *me = [[human alloc] init];
    me.name = @"daesung";
    me.weight = @"184";
    me.height = @"75";
    human *she = [[human alloc] init];
    she.name = @"joohee";
    she.weight = @"160";
    she.height = @"49";
    human *he = [[human alloc] init];
    he.name = @"hansuck";
    he.weight = @"176";
    he.height = @"69";
    
    NSLog(@"My name is %@", me.name);
    NSLog(@"My name is %@, weight: %@, height: %@", me.name, me.weight, me.height);
    NSLog(@"My name is %@, weight: %@, height: %@", she.name, she.weight, she.height);
    NSLog(@"My name is %@, weight: %@, height: %@", he.name, he.weight, he.height);
    
    [me tolkto:@"주희" topic:@"지진" language:@"한국어"];
    [me runto:@"부산" byspeed:@100 with:she.name];
    [me eatto:@"사과"];
    [me run];
    [she think];
    [he see];
    [he write];
    
    wizard *wedom = [[wizard alloc] init];
    wedom.health = @"700";
    wedom.mana = @"450";
    wedom.magicalPower = @"50";
    wizard *coco = [[wizard alloc] init];
    coco.health = @"800";
    coco.mana = @"380";
    coco.magicalPower = @"70";
    wizard *redcut = [[wizard alloc] init];
    redcut.health = @"770";
    redcut.mana = @"430";
    redcut.magicalPower = @"65";
    
    NSLog(@"wedom health:%@, mana: %@, magicalPower: %@", wedom.health, wedom.mana, wedom.magicalPower);
    NSLog(@"coco health:%@, mana: %@, magicalPower: %@", coco.health, coco.mana, coco.magicalPower);
    NSLog(@"redcut health:%@, mana: %@, magicalPower: %@", redcut.health, redcut.mana, redcut.magicalPower);
    
    [wedom icespear:@"아이스스피어" monster:@"고블린" inventory:@"골드"];
    [wedom magicmissile];
    [redcut fireball];
    [coco wand];
    
    warrior *kutkut = [[warrior alloc] init];
    kutkut.mana = @"150";
    kutkut.health = @"780";
    kutkut.physicalPower = @"140";
    warrior *black = [[warrior alloc] init];
    black.mana = @"110";
    black.health = @"700";
    black.physicalPower = @"160";
    warrior *faker = [[warrior alloc] init];
    faker.mana = @"200";
    faker.health = @"730";
    faker.physicalPower = @"125";
    NSLog(@"wedom health:%@, mana: %@, physicalPower: %@", kutkut.health, kutkut.mana, kutkut.physicalPower);
    NSLog(@"black health:%@, mana: %@, physicalPower: %@", black.health, black.mana, black
          .physicalPower);
    NSLog(@"faker health:%@, mana: %@, physicalPower: %@", faker.health, faker.mana, faker
          .physicalPower);
    
    [black attackto:@"오우거" skill:@"휠인드"];
    [kutkut swordto:@"오크"];
    [kutkut cry];
    [black shield];
    [faker sword];
    
    warrior *daesung = [[warrior alloc] init];
    daesung.mana = kutkut.mana;
    daesung.health = black.health;
    daesung.physicalPower = faker.physicalPower;
    NSLog(@"daesung health:%@, mana: %@, physicalPower: %@", daesung.health, daesung.mana, daesung.physicalPower);
    
    [daesung cry];
    [daesung shield];
    
    wizard *sunk = [[wizard alloc] init];
    sunk.mana = kutkut.mana;
    sunk.health = redcut.health;
    sunk.magicalPower = black.physicalPower;
    NSLog(@"sunk health:%@, mana: %@, physicalPower: %@", sunk.health, sunk.mana, sunk.magicalPower);
    
    [sunk fireball];
    [sunk magicmissile];
    
    
    priest *kuku = [[priest alloc] init];
    kuku.health = @"500";
    kuku.mana = @"350";
    kuku.divine = @"450";
    priest *daeho = [[priest alloc] init];
    daeho.health = @"450";
    daeho.mana = @"500";
    daeho.divine = @"440";
    
   NSLog(@"kuku health:%@, mana: %@, divine: %@", kuku.health, kuku.mana, kuku.divine);
   NSLog(@"daeho health:%@, mana: %@, divine: %@", daeho.health, daeho.mana, daeho.divine);
    
    [daeho buff:@"왕의축복" who:@"대성" monster:@"드래곤"];
    [kuku heal:@"리커버리" who:@"대성"];
    
    
    Warrior2 *cook = [[Warrior2 alloc] init];
    cook.health =@"700";
    cook.mana = @"350";
    cook.physicalPower = @"450";
    cook.magicalPower = @"80";
    
    wizard2 *ceek = [[wizard2 alloc] init];
    ceek.health = @"450";
    ceek.mana = @"600";
    ceek.physicalPower = @"100";
    ceek.magicalPower = @"600";
    
    [cook swordattack:@"ceek"];
    [ceek fireball:@"cook"];
    
 
    [cook jumpto:@"ceek" cry:@"ceek" run:@"ceek"];
    [ceek lightningBolt:@"cook" monster:@"오거"];
    
    
    
    return 0;
}
