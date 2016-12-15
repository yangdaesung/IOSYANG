//
//  main.m
//  Class0928
//
//  Created by Yang on 2016. 9. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLinkedList.h"
int main(int argc, const char * argv[]) {
   
    DLinkedList *dLink = [[DLinkedList alloc] init];
    NSInteger newValue=4;
    
    [dLink addFirstNodeValue:newValue];
    [dLink addFirstNodeValue:5];
    [dLink addFirstNodeValue:6];
    [dLink addFirstNodeValue:8];
    
    
    
    
    return 0;
}
