//
//  wizard2.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "wizard2.h"

@implementation wizard2

-(id)windstorm:(id)to {
    NSLog(@"%@를 날립니다", to);
    return nil;
}

-(id)magicalAttack:(id)to {
    NSLog(@"%@에게 지팡이로 공격합니다.", to);
    return nil;
}

-(id)heal:(id)to {
    NSLog(@"%@는 받지 못합니다", to);
    return nil;
}

-(id)fireball:(id)to {
    NSLog(@"%@는 화상을 입습니다",to);
    return nil;
}

-(id)lightningBolt:(id)to monster:(id)mon {
    NSLog(@"%@에게 날렸으나 %@에게 까지 피해를 입었습니다",to,mon);
    return nil;
}
@end
