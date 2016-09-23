//
//  Person.m
//  class0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Person.h"

@implementation Person


//instancetype은 최근에 바뀌었다.
//instancetype 은 init의 값이 따로 지정이 되어 있지않다면
//메소드에 오버라이드를 할 수 있다.
//이름과 잘생김
-(instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome {
    
    //알아보기
    self = [super init];
    
    self.name = name;
    self.isHandsome = isHandsome;
    
    return self;

}
//이름과 나이
-(instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    
    
    self.name = name;
    self.age = age;
    
    return self;
}
//이름과 도시
-(instancetype)initWithName:(NSString *)name city:(NSString *)city {
    
    self.city = city;
    self.name = name;
    
    return  self;
    
}

//나이 도시 성별
-(instancetype)initWithage:(NSInteger)age city:(NSString *)city gender:(NSString *)gender {
    
    self.age = age;
    self.city = city;
    self.gender = gender;
    
    return self;
    
}










@end
