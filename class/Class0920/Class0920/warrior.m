//
//  warrior.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "warrior.h"

@implementation warrior

-(id)shield {
    NSLog(@"방패를 착용하고 있습니다");
    return nil;
}

-(id)cry {
    NSLog(@"고함을 질러서 어그로를 끌고 있습니다");
    return nil;
}

-(id)sword{
    NSLog(@"검을 착용하고 있습니다");
    return nil;
}
-(id)swordto:(id)attack {
    NSLog(@"%@를 공격하고 있습니다", attack);
    return nil;
}

-(id)attackto:(id)someone skill:(id)skillto {
    NSLog(@"%@을 %@로 죽였습니다", someone,skillto);
    return nil;
}
@end
