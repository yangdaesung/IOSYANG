//
//  main.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Cat.h"
#import "Dog.h"
#import "Bird.h"
#import "BirdJunior.h"
#import "Teacher.h"
#import "Student.h"
#import "UnStudent.h"
#import "GameCharacter.h"
#import "animal.h"
int main(int argc, const char * argv[]) {
  
    //전사 신상정보
    Warrior *jason = [[Warrior alloc] init];
    jason.health = 1000;
    jason.mana = 100;
    jason.physicalPower = 80;
    jason.magicalPower = 20;
    jason.isDead = NO;
    jason.name = @"전사";
    jason.weapon = @"무기";
    
    Warrior *toress = [[Warrior alloc] init];
    toress.health = 1100;
    toress.mana = 80;
    toress.physicalPower = 70;
    toress.magicalPower = 10;
    toress.isDead = NO;
    toress.name = @"워리어";
    toress.weapon = @"무기";
    
    
    //마법사 신상정보
    Wizard *rose = [[Wizard alloc] init];
    rose.health = 800;
    rose.mana = 500;
    rose.physicalPower = 20;
    rose.magicalPower = 80;
    rose.isDead = NO;
    rose.name = @"마법사";
    rose.weapon = @"지팡이";
    
    Bird *anti = [[Bird alloc] init];
    anti.weihght = 10.55;
    anti.age = 5;
    anti.height =60.44;
    anti.name = @"앙티";
    anti.howl = @"깍깍";
    
    Dog *nuri = [[Dog alloc] init];
    nuri.weihght = 30.8;
    nuri.age = 3;
    nuri.height =70;
    nuri.name = @"누리";
    nuri.howl = @"멍멍";
    
    Cat *nari = [[Cat alloc] init];
    nari.weihght = 20.8;
    nari.age = 4;
    nari.height = 80;
    nari.name = @"나리";
    nari.howl = @"야옹";
    
    BirdJunior *antiJ = [[BirdJunior alloc] init];
    antiJ.weihght = 0.98;
    antiJ.age = 1;
    antiJ.height = 10.88;
    antiJ.name = @"앙티주니어";
    
    
    //상속을 사용해서 animal -> Bird 의 클래스를 가지고 BirdJunior을 만들었다.
    [antiJ eat:@"모이"];
    [antiJ yowl:@"부모님"];
    
    
    
    Teacher *computer = [[Teacher alloc] init];
    computer.name = @"민희";
    computer.subject = @"컴퓨터선생님";
    
    
    Student *justStudent = [[Student alloc] init];
    justStudent.name = @"영희";
    
    Student *anotherStudent = [[Student alloc] init];
    anotherStudent.name = @"철수";
    
    UnStudent *unistudent = [[UnStudent alloc] init];
    unistudent.name = @"경수";
    
    
    
    [computer teach:justStudent];
    [computer teach:anotherStudent];
    
    
    [jason smashTo:toress];
    
    Person *daesung = [[Person alloc] init];
    
    
    //부모에게 물려바은 메소드는 모두 가능하다 !!
    [daesung adopt:anti];
    [justStudent adopt:anti];
    [unistudent adopt:anti];
    
    Cat *nari2 =[[Cat alloc] init];
    nari2.howl = @"dddd";
    [nari cry:nari];
    
    return 0;
}
