//
//  main.m
//  PropertAttributes1018
//
//  Created by Yang on 2016. 11. 8..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Musician.h"
#import "BroadcastStation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Musician *blackPink = [[Musician alloc] initWithName:@"블랙핑크" memberCount:@4];
  
        blackPink.company = @"YG";
        NSLog(@"%@",blackPink.companyName);
        
     
        BroadcastStation *mbc = [[BroadcastStation alloc] init];
        BNNroadcastStation *sbs = [[BroadcastStation alloc] init];
        BroadcastStation *kbs = [[BroadcastStation alloc] init];
        

        
        NSLog(@"%@",kbs.musician.groupName);
        
        blackPink.memberCount = @5;
        blackPink.manager = @"정준하";
        
        //blackPink.groupName = @"I.O.I";
        
        
    }
    return 0;
}
