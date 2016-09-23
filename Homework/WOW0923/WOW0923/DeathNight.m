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

-(id)deathAttack:(GameClass *)who {
    
    NSUInteger clear = who.health;
    who.health = clear - self.physicalPower;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",who.name,self.physicalPower,clear,who.health);
    
    return nil;
    
}










@end
