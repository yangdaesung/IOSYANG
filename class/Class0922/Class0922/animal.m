//
//  animal.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "animal.h"

@implementation animal

-(id)eat:(id)what {
    NSLog(@"%@를 먹었다",what);
    return nil;

}

-(id)cry:(animal *)howling {
    NSLog(@"%@는 %@ 이라고 웁니다.",self.name,self.howl);
    return nil;

}

@end
