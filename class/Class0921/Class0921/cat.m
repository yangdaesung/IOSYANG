//
//  cat.m
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "cat.h"
#import "dog.h"
#import "horse.h"

@implementation cat
-(id) eat:(dog *)what {
    
    NSString *wheet = what.tail;
    
    NSLog(@"고양이가 개의  %@를 물다",wheet);
    return nil;
}

@end
