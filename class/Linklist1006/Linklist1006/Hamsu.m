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

    [self push:self.last newValue:value];

}

//push !!!!
-(void)push:(Node *)nowNode newValue:(NSInteger)value;
{
    
    Node *newNode =[[Node alloc] init]; //초기화 한다.
    newNode.value = value;              //들어오는 값은 새로운 노드이다.
    
    if (self.header.next == nil) {      //만약에 header앞이 nil 이라면
        self.header.next = newNode;     //header앞은 새로운 노드이다.
        newNode.preve = self.header;    //새로운 노드 전에는 헤드이다.
        newNode.next = nil;             //그래서 새로운 노드는 nil이다.
        self.last=newNode;              //마지막은 새로운 노드이다.
    } else {
        
        newNode.preve = self.last;      //만약 새로운 노드 전이 last라면
        
        newNode.next=nil;               //새로운 노드 다음은 nil이다.
        
        self.last=newNode;              //그래서 last 는 새로운 노드이다.
        
        
    }
    NSLog(@"%ld",self.last.value);
}

//pop !!
-(void)pop
{
    NSInteger tempo = self.last.value;
    
    
    
    
    Node *before = [[Node alloc] init];
    before = self.last.preve;
    NSLog(@"%ld",before.value);
        before.next = nil;
        self.last.preve = nil;
        self.last = before;
        
    
    NSLog(@"%ld",tempo);
}
















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
