//
//  NumDLinked.m
//  example0928
//
//  Created by Yang on 2016. 9. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "NumDLinked.h"
#import "Node.h"


@implementation NumDLinked

//초기화 하기
-(instancetype)init
{
    if (self) {
        self.header = [[Node alloc] init];
        self.header.next = nil;
        self.header.preve = nil;
        self.lastNodeIndex = 0;
    }
    return self;
}

-(void)addFirstNodeValue:(NSInteger )newValue
{
    
    Node *newNode = [[Node alloc] init];
    newNode.value = newValue;
    if (self.header.next == nil) {
        self.header.next = newNode;
        newNode.preve = self.header;
        newNode.next = nil;
    } else {
        newNode.preve = self.header;
        newNode.next = self.header.next;
        self.header.next.preve = newNode;
        self.header.next = newNode;
    }
    
    
    
    
    
    
    
    
}






















@end
