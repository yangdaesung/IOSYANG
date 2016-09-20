//
//  Warrior.m
//  exam0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

-(id)cry {
    NSLog(@"함성을 지릅니다");
    return nil;
}

-(id)shildAttack:(id)to {
    NSLog(@"%@에게 방패공격을 합니다",to);
    return nil;
}

-(id)jump {
    NSLog(@"점프를 합니다 ");
    return nil;
}

-(id)charge {
    NSLog(@"돌격을 합니다 ");
    return nil;
}

-(id)cry:(id)what charge:(id)who run:(id)running {
    NSLog(@"%@에게 함성을 지른후 %@해서 잡고 %@해서 퇴각했다.",what,who,running);
    return nil;
}

@end
