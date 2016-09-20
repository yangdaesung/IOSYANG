//
//  wizard.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "wizard.h"

@implementation wizard

//지팡이 종류 구현하기
-(id)wand {
    NSLog(@"지팡이를 착용하고 있습니다");
    return nil;
}
//매직미사일 스펠링중 취소 해보기
-(id)magicmissile {
    NSLog(@"매직미사일을 쏘고 있습니다");
    return nil;
}

-(id)fireball {
    NSLog(@"파이어볼을 쓰고 있습니다");
    return nil;
}

-(id)icespear:(id)mon monster:(id)who inventory:(id)item {
    NSLog(@"%@를 써서 %@를 잡아서 %@을 획득했습니다",mon,who,item);
    return nil;
}
@end
