//
//  main.m
//  class0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "student.h"
int main(int argc, const char * argv[]) {
    
    Person *jack = [[Person alloc] init];
    jack.name = @"대성";
    jack.age = 30;
    jack.mobileNumber = @"010-4056-8287";
    jack.city = @"대구";
    jack.isHandsome = YES;
    
    Person *rose = [[Person alloc] initWithName:@"로즈"
                                     isHandsome:YES];
    
    NSLog(@"rose 's name: %@,잘생겻니 : %d",rose.name,rose.isHandsome);
    
    NSLog(@"jack 's name : %@,나이 : %lu",jack.name,jack.age);
    
    NSLog(@"jack ;s name : %@,도시 : %@",jack.name,jack.city);
    
    
    
    
    student *mini = [[student alloc] initWithName:@"미니" city:@"서울"];
    mini.school = @"신사초등";
    mini.grade = 60;
    mini.credit = @"합격";
    mini.mobileNumber = @"010-4056-8287";
    
    //상속받아서 person의 꺼를 받아온다.
    NSLog(@"mini 's name : %@,도시 : %@,잘생겼니 :%d,모바일 : %@",mini.name,mini.city,mini.isHandsome,mini.mobileNumber);
    
    
    
    
    
    
    
    
    return 0;
}
