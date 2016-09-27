//
//  DeathNight.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "DeathNight.h"
#import "GameClass.h"
@implementation DeathNight

//데스어택 스킬
-(id)deathAttack:(GameClass *)who {
    
    NSUInteger clear = who.health;
    who.health = clear - self.physicalPower;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",who.name,self.physicalPower,clear,who.health);
    
    return nil;
    
}
//소드디펜스 칼로 공격을 막아서 때린 캐릭터에게 데미지 반사
-(id)swoardDefense:(GameClass *)who {
    
    NSUInteger clear2 = who.health;
    who.health = clear2 - self.physicalPower;
    
    NSLog(@"%@가 공격했으나 실패해서 본인이 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,who.physicalPower,clear2,who.health);
    return nil;

}
//죽음의손길 
- (id)touchofDeath:(GameClass *)who {
    
    NSUInteger clear3 = who.health;
    who.health = clear3 - self.physicalPower;
    
    NSLog(@"%@가 공격했으나 실패해서 본인이 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,who.physicalPower,clear3,who.health);
    return nil;
    
}









@end
