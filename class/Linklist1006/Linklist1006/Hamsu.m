//
//  Hamsu.m
//  Linklist1006
//
//  Created by Yang on 2016. 10. 6..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Hamsu.h"
#import "Node.h"
@implementation Hamsu



//초기화
-(instancetype)init
{
    self = [super init];
    if (self) {
        self.header = [[Node alloc]init];
        self.header.preve = nil;
        self.header.next = nil;

    }

    return self;
}

-(void)push:(NSInteger)value{

    [self push:self.header newValue:value];

}

//push !!!!
-(void)push:(Node *)nowNode newValue:(NSInteger)value;
{
    
    Node *newNode =[[Node alloc] init];
    newNode.value = value;
    
    if (self.header.next == nil) {
        self.header.next = newNode;
        newNode.preve = self.header;
        newNode.next = nil;
    } else {
        newNode.preve = self.header;
        newNode.next = self.header.next;
        
        self.header.next =newNode;
    }
}

//pop !!

















// 전체 노드 데이터 프린트 하기
- (void)printAllNode{
    
    // 헤더 값 0은 출력 되지 않는 if문
    if(self.header.next != nil){
        
        [self printNode:self.header.next];
        
    }
}

- (void)printNode:(Node *)node{
    
    // 다음에 값이 없을때 값을 출력하고 끝
    if (node.next == nil) {
        
        NSLog(@"%ld", node.value);
        
        // 값을 출력했는데 다음에 또 값이 있으면 다음으로!
    }else{
        
        NSLog(@"%ld", node.value);
        
        [self printNode:node.next];
        
    }
    
}












@end
