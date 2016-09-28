//
//  DLinkedList.m
//  Class0928
//
//  Created by Yang on 2016. 9. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "DLinkedList.h"
#import "Node.h"
@implementation DLinkedList

//초기화 하기
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.header = [[Node alloc] init];
        self.header.next = nil;
        self.header.preve = nil;
        self.lastNodeIndex = 0;
    }
    return self;
}

//add 첫번째 넣기
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


//add(마지막에 데이터를 추가한다)
//하나의 헤드지점을 설정하고 노드를 추가생성한다 그 후 연결리스트를 실행해 마지막에 도착하게 한다음
//추가된 노드를 추가한다 . 그후 다시 연결리스트를 실행한다.


-(void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value
{
    //nowNode의 next가 nil이이다.
    if (nowNode.next ==nil) {
        Node *newNode = [[Node alloc] init];
        newNode.value = value;
        newNode.preve = nowNode;
        newNode.next = nil;
        newNode.index = self.lastNodeIndex;
        nowNode.next = newNode;
        
        self.lastNodeIndex = self.lastNodeIndex + 1;
    } else
    {//nowNode의 next가 nil이아니다.
        [self addLastIndexNode:nowNode.next newValue:value];
    }
}

//add  두번째 넣기


//remove(해당 데이터를 삭제한다)
//일단 지울 노드를 찾아야 하기 때문에 우선은 끝까지 돌리고 난두 ㅣ

//removeLast
-(void)removeLast
{
    [self removeLastNode:self.header];
}

- (void)removeLastNode:(Node *)nowNode
{
    if (nowNode.next == nil) {
        //nowNode = lastNode
        Node *preLast = nowNode.preve;
        preLast.next = nil;
        nowNode.preve = nil;
    }else
    {
        [self removeLastNode:nowNode.next];
    }
}

//count(총 노드의 갯수를 구한다)


//printNode(모든 노드의 데이터를 출력한다.)

-(void)printNode
{
    /*if (self.header.next != nil)
    {
        [self printNode:self.header.next];
    }*/
    
    [self printNode:self.header];
}
-(void)printNode:(Node *)node
{
    NSLog(@"%ld",node.value);
    
    if (node.next != nil) {
        [self printNode:node.next];
    }
}

//------------------------------------ 또다른 방식
/*{  //이 노드의 출력
    if(node.next == nil){
        NSLog(@"%ld ",node.value);
    }else{//
        NSLog(@"%ld ",node.value);
        [self printNode:node.next];
    }
}*/
    

//serchData(원하는 데이터를 찾는 로직,중복 모두 찾아내서 인데스로 표시 , 배열로 리턴)

//printIndex(해당 인덱스의 노드의 값을 찾는다.)



@end
