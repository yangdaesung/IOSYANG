//
//  Dungeon.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Dungeon.h"
#import "GameClass.h"
@implementation Dungeon


//던전에 입장하다.
- (id)enter:(GameClass *)who {
    
    NSLog(@"%@가 %@에 입장하였습니다.",who.name,self.name);
    
    return  nil;
}



@end
