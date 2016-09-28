//
//  Person.h
//  Class0927
//
//  Created by Yang on 2016. 9. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

//구조체에 이름짓기 !
typedef struct character
{
    CGFloat height;
    CGFloat weight;
}character;

@interface Person : NSObject


@property NSString *name;
@property NSInteger age;
@property character info;


-(character)setHeight:(CGFloat)height weight:(CGFloat)weight;



@end
