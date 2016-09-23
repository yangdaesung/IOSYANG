//
//  student.m
//  class0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "student.h"

@implementation student

-(instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade {
    
    self = [super initWithName:name city:city];
    
    self.school = school;
    self.grade = grade;
    
    return self;

}

//이름 도시 학교 학년 성적
-(instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade credit:(NSString *)credit {
    
    self = [self initWithName:name
                         city:city
                   schoolName:school
                        grade:grade];
    self.credit = credit;
    
    return self;
    
}

//이름 도시 핸섬 모바일
-(instancetype)initWithName:(NSString *)name city:(NSString *)city isHandsome:(BOOL)isHandsome mobileNumber:(NSInteger)mobileNumber {
    
    self = [self initWithName:name city:city isHandsome:isHandsome mobileNumber:mobileNumber];
    
    return self;

    
}



@end
