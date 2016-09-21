//
//  horse.m
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "horse.h"
#import "cat.h"
#import "dog.h"

@implementation horse

-(id) eat:(cat *)what {
    
    NSString *wheet = what.tail;
    
    NSLog(@"말이 고양이의 %@를 물다",wheet);
    return nil;
}
@end
