//
//  Wizard.m
//  exam0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

-(id)fireball:(id)to {
    NSLog(@"%@에게 파이어볼을 쏩니다.",to);
    return nil;
}

-(id)icespear {
    NSLog(@"얼음창을 쏩니다");
    return nil;
}

-(id)meteo {
    NSLog(@"운석을 소환합니다");
    return nil;
}

-(id)healing {
    NSLog(@"힐을 합니다");
    return nil;
}

@end
