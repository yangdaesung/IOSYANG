//
//  main.m
//  Linklist1006
//
//  Created by Yang on 2016. 10. 6..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hamsu.h"
#import "Queue.h"
int main(int argc, const char * argv[]) {
  
    
    Hamsu *dlink = [[Hamsu alloc]init];
    
    [dlink push:1];
    [dlink push:2];
    [dlink push:3];
    [dlink push:4];
    [dlink push:5];
    [dlink push:6];
    [dlink push:7];
    [dlink push:8];
    [dlink push:9];
    [dlink push:10];
    
    
    
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
    [dlink pop];
   
    
    [dlink empty];
    
    
    Queue *que = [[Queue alloc] init];
    
    [que quPush:1];
    [que quPush:2];
    [que quPush:3];
    [que quPush:4];
    [que quPush:5];
    [que quPush:6];
 
    [que get];
    return 0;

}
