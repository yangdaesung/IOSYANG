//
//  main.m
//  ObjectLifeCycle1020
//
//  Created by Yang on 2016. 10. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    
        MyClass *instance = [[MyClass alloc] init];
        NSLog(@"%@",instance);
        instance = nil;
        
        NSLog(@"END");
        

        
        
        
    
    return 0;
}
