//
//  Cat.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Cat.h"
#import "animal.h"
@implementation Cat

-(id)cry:(animal *)howling {
    [super cry:howling];
    NSLog(@"%@는 %@ 이라고 웁니다.이쁘게~",self.name,howling.howl);
    return nil;
    
}


@end
