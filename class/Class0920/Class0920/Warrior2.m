//
//  Warrior2.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior2.h"

@implementation Warrior2
-(id)swordattack:(id)to {
    NSLog(@"%@에게 공격 했습니다",to);
    return nil;
}

-(id)jump:(id)to {
    NSLog(@"%@를 향해 점프를 했습니다",to);
    return nil;
}

-(id)jumpto:(id)who cry:(id)what run:(id)running {
    NSLog(@"%@에게 점프를 해서 %@에게 함성을 질러서 %@를 도망가게 했습니다",who,what,running);
    return nil;
}

-(id)shield:(id)someone count:(id)mon {
    NSLog(@"%@의공격을 방패로 막고 %@를 향해 공격했습니다.",someone,mon);
    return nil;
}
@end
