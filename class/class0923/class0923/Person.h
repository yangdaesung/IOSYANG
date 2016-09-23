//
//  Person.h
//  class0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSString *mobileNumber;
@property NSString *city;
@property BOOL isHandsome;
@property NSString *gender;

//초기화 메서드는 무조건 initWith가 붙는다.
//이름, 잘생겼는지

- (instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome;

//이름,나이

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

//이름,도시
- (instancetype)initWithName:(NSString *)name city:(NSString *)city;

//나이,도시,성별

-(instancetype)initWithage:(NSInteger)age city:(NSString *)city gender:(NSString *)gender;

@end
