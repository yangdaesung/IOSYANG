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

-(id)typoon:(GameClass *)who {
    
    NSUInteger clear = who.health;
    who.health = clear - self.magicalpower;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 체력이 %lu에서 %lu로 변경되었습니다.",who.name,self.magicalpower,clear,who.health);
    
    return nil;
    
}










@end
