//
//  Wizard.m
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Wizard.h"
#import "GameCharacter.h"

@implementation Wizard

- (id)magicMissle:(GameCharacter *)someone {
    //마법사가 누구에게 피해를 입히다.
    NSUInteger wdd = someone.health;
    //누군가를 지정
    NSString *namee = someone.name;
    //누군가를 공격
    someone.health = wdd - someone.health;
    
    NSLog(@"%@에게 %ld만큼 피해를 입히고 , \n 체력이 %lu에서 %lu만큼 감소되었습니다.",
          namee,self.magicalPower,wdd,someone.health);
    return nil;
    
    
    
    
}





@end
