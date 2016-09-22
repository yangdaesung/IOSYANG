//
//  Dog.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Dog.h"
#import "animal.h"
@implementation Dog

-(id)cry:(animal *)howling {
    NSLog(@"%@는 %@ 이라고 울지 않습니다. 입이 아파서..",self.name,howling);
    return nil;
    
}

@end
