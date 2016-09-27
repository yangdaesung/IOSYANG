//
//  main.m
//  Class0927
//
//  Created by Yang on 2016. 9. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
   
    
    
    
    Person *person = [[Person alloc] init];
    
    character temp;
    
   temp =[person setHeight:190 weight:80];
   NSLog(@"%lf  %lf입니다.",temp.height,temp.weight);
    
    
    
    return 0;
}
