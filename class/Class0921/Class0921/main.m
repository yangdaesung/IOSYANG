//
//  main.m
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "dog.h"
#import "horse.h"
#import "cat.h"
int main(int argc, const char * argv[]) {
  
    
    //타입 변수이름 = 값;
    //BOOL name = NO;
    
    Warrior *jack = [[Warrior alloc] init];
    jack.location = @"현재위치";
    jack.health = 200;
    jack.mana = 100;
    jack.name = @"jackTo";//[[NSString alloc] initWithUTF8String:"전사"]; 기본적으로 UTF8의 문자코드를 사용
    jack.physicalPower = 50;
    jack.isDead = NO;
    jack.magicalPower = 10;
    jack.skill =@"shildattack";
    
    Wizard *chery = [[Wizard alloc] init];
    chery.location = @"마을";
    chery.health = 150;
    chery.mana = 300;
    chery.name = @"rose";
    chery.magicalPower = 70;
    chery.isDead = NO;
    chery.physicalPower = 10;
    chery.home = @"hometown";
    chery.icewall = @"icewell";
    
    
    [jack shieldAttack:chery];
    [jack cry:chery];
    
    [chery telfort:@"성곽"];
    [jack jumpto:@"오크"];
    [chery icewell:jack];
    [chery icespear:jack];
    
    
    //%@ 객체 형식에서만 지원이 가능하다 !
    //NSLog(@"%@", jack.health);
    //형식 지정자 - format spceifier
    // 정수 타입 - 부호가 있는 32bit 정수타입 > 10진수(%d)
    // 정수 타입 - 부호가 있는 64bit 정수타입 > 10진수(%ld)
    NSLog(@"physical power : %ld", jack.physicalPower);
    
    //언더 플로워가 되서 최대값이 된다 !
    jack.health = -1;
    //오버 플로워가 되어서 0이 된다.
    jack.health = UINT_MAX + 1;
    // 정수 타입 - 부호가 없는 32bit 정수타입 > 10진수(%u)
    // 정수 타입 - 부호가 없는 64bit 정수타입 > 10진수(%lu)
    NSLog(@"healt : %lu", jack.health);
    
    CGFloat someFloatValue = 101.5;
    //실수 타입 - 32bit 실수 타입 (%f)
    //실수 타입 - 64bit 실수 타입 (%lf)
    NSLog(@"float value : %lf", someFloatValue);
    
    //불리언
    NSLog(@"Boolean value : %d", YES);
    NSLog(@"Boolean value : %d", NO);
    
    //%를 표현하고 싶어요-%%2개로 넣으면 된다.
    NSLog(@"공격력이 50%% 증가하였습니다.");
    
    //주소값을 보고 싶어요.
    NSLog(@"jack object : %@,memory address: %p", jack,jack);
    
    //정수 타입(16진수)
    NSLog(@"physical power(16진수) : %lx", jack.physicalPower);
    
    //정수 타입(8진수)
    NSLog(@"physical power(8진수) : %lo", jack.physicalPower);
    
    //캐릭터 타입
    NSLog(@"character : %c %c %c",'a','b','c');
    
    //줄바꿈 \n
    NSLog(@"줄을 바궈 \n봅시다");
  
    //탭을 표현하고 싶어요 \t
    NSLog(@"사이에 탭\t을 넣어봅니다");
    
    //응용
    NSLog(@"jack의 체력은 %lu\t마력은 %lu이고,\n 물리공격력은 %ld , 힘은은 %ld입니다."
          ,jack.health,jack.mana,jack.physicalPower,jack.physicalPower);
    
    NSLog(@"rose의 이름은 %@이고 체력은 %lu\t 마력은 %lu이고 \n 물리공격력은 %ld\t  지능은 %ld입니다."
           ,chery.name,chery.health,chery.mana,chery.magicalPower,chery.magicalPower);
    
    // %-5ld
    // %-04ld
    // %+3ld
    // %5.2f
    // %-10.3f
    // %10.0f
    //의미를 알아보기 형식지정자
    
    
    
   //불리언타입
    BOOL black = NO;
    BOOL compare = NO;
    
    
    //정수타입
    //부호가 있는 정수 타입
    NSInteger yesInteger = -100;
    NSInteger goodInteger = 500;
    //부호가 없는 정수 타입
    NSUInteger unInteger = -500;
    NSUInteger badInteger = 300;
    
    //()를 굳이 칠필요가 없다 ! 없어도 된다.
    //다른 숫자형 데이터끼리 비교가 가능하다 허나 원칙적으로는 안된다.(컴퓨터가 알아서 계산해서 비교하기때문)
    compare = (goodInteger < badInteger);
    
    //이렇게 하면 1000의 값이 anothrNumber 에 들어가게 된다. goodInteger은 들어가지 않는다.
    NSInteger anotherNumber = goodInteger;
    anotherNumber = 1000;
    
    //객체형 숫자 타입
    NSNumber *someNumberObject = @100; //[[NSNumber alloc] initWithInt:100];<-원래는 이식을 간소하게만든것.
    
    //실수형 타입
    CGFloat height = 200.3;
    CGFloat weight = 100.5;
    
    //문자타입 하나의 문자만 넣을수 있다 딱 한글자 !!! (아스키코드값이 들어간다!)
    char someCharacter = 'a';
    
    
    id anyObject = @100;
    anyObject = [[NSObject alloc] init];
    
    
    
    dog *haha = [[dog alloc] init];
    haha.leg = 4;
    haha.mouth = @"멍멍";
    haha.tail = @"tail";
    haha.ear = @"개사료";
    
    horse *hoho = [[horse alloc] init];
    hoho.leg = 4;
    hoho.mouth = @"흐리이잉";
    hoho.tail = @"tail";
    hoho.ear = @"말먹이";
    
    cat *cal = [[cat alloc] init];
    cal.leg =4;
    cal.mouth = @"야옹야옹";
    cal.tail = @"tail";
    cal.ear = @"고양이사료";
    
    
    //xx와 xx의 꼬리를 물다.
    [haha eat:cal];
    [hoho eat:cal];
    [cal eat:haha];
    
    
    
    
    
    
    return 0;
}
