//
//  Person.m
//  Class0927
//
//  Created by Yang on 2016. 9. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Person.h"

@implementation Person


-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return  self;

}



-(character)setHeight:(CGFloat)height weight:(CGFloat)weight
{
    
    //_into.height = height;
   //_into.weight = weight;
    
    
    //다른버전
    character tempInfo = {weight,height};
    
    return  tempInfo;
    
}


@end
