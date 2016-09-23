//
//  Vehicle.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Vehicle.h"
#import "GameClass.h"
@implementation Vehicle

- (id)sit:(GameClass *)who speed:(NSUInteger)speed{
    
    NSUInteger before = who.speed;
    who.speed = speed+ who.speed;
    
    
    NSLog(@"%@은 %@이라는 탈것을 타서 이동속도 %ld가 증가하여 이동속도가 %ld에서 %ld로 변경되었습니다.",
          who.name,self.name,speed,before,who.speed);
    
    return nil;
    
    
    
}







@end
