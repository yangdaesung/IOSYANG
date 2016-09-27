//
//  Person.h
//  Class0927
//
//  Created by Yang on 2016. 9. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct character
{
    CGFloat height;
    CGFloat weight;
}character;

@interface Person : NSObject


@property NSString *name;
@property NSInteger age;
@property character info;






@end
