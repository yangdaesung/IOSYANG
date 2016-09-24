//
//  Druid.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Druid.h"
#import "GameClass.h"
@implementation Druid

//태풍 스킬!
-(id)typoon:(GameClass *)who{
    
    NSUInteger clear = who.health;
    who.health = clear - self.magicalpower;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",who.name,self.magicalpower,clear,who.health);
    
    return nil;

}
//곰변신!
-(id)bearForm {

    NSLog(@"%@가 곰으로 변신했습니다.",self.name);
    return nil;
}
//앨룬의화살 스킬 !
-(id)eluneArrow:(GameClass *)who {
    
    NSUInteger arrow = who.health;
    who.health = arrow - self.health;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,self.magicalpower,arrow,self.health);
    return nil;
    
}
//힐 스킬 !
-(id)heal:(GameClass *)who {
    
    NSUInteger heal = who.health;
    who.health = heal + who.health;
    
    NSLog(@"%@에게 %ld의 체력을 채워주고 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,self.magicalpower,heal,self.health);
    return nil;
}

@end
