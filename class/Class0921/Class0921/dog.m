//
//  dog.m
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "dog.h"
#import "horse.h"
#import "cat.h"

@implementation dog
//개가 고양이를 꼬리를 물다.
-(id) eat:(cat *)what {
    
    NSString *wheet = what.tail;
    
    NSLog(@"개가 고양이의 %@를 물다",wheet);
    return nil;
}


@end
