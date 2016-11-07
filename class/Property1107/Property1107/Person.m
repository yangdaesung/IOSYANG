//
//  Person.m
//  Property1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)perosonName
{
    _personName = @"yang";
    _age = 20;
    _weight = 60.333;
}

- (NSString *)personName {
  
    return _personName;
    
}
- (NSInteger)age {
    
    return _age;
    
}

- (void)setPersonName:(NSString *)personName
{
    _personName = personName;
    
}

- (void)setAge:(NSInteger)age
{
    _age = age;
    
}

- (void)setWeight:(CGFloat)weight
{
    _weight = weight;
}



- (void)printPersonInfo

{   
    NSLog(@"이름 : %@, 나이 : %ld, 몸무게: %lf",_personName,_age,_weight);
}



@end
