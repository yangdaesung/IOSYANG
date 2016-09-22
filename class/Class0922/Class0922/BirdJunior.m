//
//  BirdJunior.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "BirdJunior.h"
#import "animal.h"
#import "Bird.h"

@implementation BirdJunior

-(id)yowl:(animal *)parent {
    
    NSLog(@"%@에게 먹이를 달라고 울었다",parent);
    return nil;
    
}

@end
