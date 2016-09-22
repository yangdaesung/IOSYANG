//
//  main.m
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "GameCharacter.h"
#import "Person.h"
#import "Student.h"
#import "UniStudent.h"
int main(int argc, const char * argv[]) {
    
    Warrior *Jason = [[Warrior alloc] init];
    Jason.health = 700;
    Jason.mana = 100;
    Jason.physicalPower = 80;
    Jason.magicalPower = 20;
    Jason.name = @"전사";
    Jason.location = @"현재위치";
    Jason.isDead = NO;
    
    Warrior *haru = [[Warrior alloc] init];
    haru.health = 750;
    haru.mana = 100;
    haru.physicalPower = 70;
    haru.magicalPower = 15;
    haru.name = @"전사2";
    haru.location = @"현재위치";
    haru.isDead = NO;
    
    Wizard *rose = [[Wizard alloc] init];
    rose.health = 600;
    rose.mana = 500;
    rose.physicalPower = 20;
    rose.magicalPower = 80;
    rose.name = @"마법사";
    rose.location = @"현재위치";
    rose.isDead = NO;
    
    
    [rose magicMissle:haru];
    
    //전사 공격으로 체력 떨어뜨리기 !
    [Jason shieldAttack:rose];
    [Jason shieldAttack:haru];
    [haru cry:rose];
    [Jason jump:@"오크"];
    [Jason shieldAttack:rose];
    [Jason shieldAttack:haru];
    [haru cry:rose];
    [Jason shieldAttack:rose];
    [Jason shieldAttack:haru];
    [haru cry:rose];
    [Jason shieldAttack:rose];
    [Jason shieldAttack:haru];
    [haru cry:rose];
    [Jason shieldAttack:rose];
    [Jason shieldAttack:haru];
    [haru cry:rose];
    [Jason shieldAttack:rose];
    [Jason shieldAttack:haru];
    [haru cry:rose];
    //죽은 뒤에 메시지 뜨는법 물어보기
    
    
    
    
    //사람 먹기
    Person *daesung = [[Person alloc] init];
    daesung.name = @"대성";
    daesung.age = 30;
    
    Student *daeho = [[Student alloc] init];
    daeho.name = @"대호";
    daeho.age = 28;
    
    UniStudent *man = [[UniStudent alloc] init];
    man.name =@"대훈";
    man.age = 31;
    
    
    //사람먹기 결과  첫번째는 NSString  나머진 상속을 통해 재정의함
    [daesung eat:@"대훈"];
    [daeho eat:daeho];
    [man eat:daesung];
    
    
    
    
    
    
    
    return 0;
}
