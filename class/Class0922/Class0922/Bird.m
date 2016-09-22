//
//  Bird.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Bird.h"
#import "animal.h"

@implementation Bird
-(id)cry:(animal *)howling {
    NSLog(@"%@는 %@ 이라고 울지 않고 꺅 이라고웁니다.",self.name,howling.howl);
    return nil;
    
}

@end
