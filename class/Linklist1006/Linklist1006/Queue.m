//
//  Queue.m
//  Linklist1006
//
//  Created by Yang on 2016. 10. 8..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Queue.h"
#import "Node.h"

@implementation Queue



-(void)quPush:(NSInteger)Value
{
    [self quPush:self.header newValue:Value];
}

//queue push
-(void)quPush:(Node *)nowValue newValue:(NSInteger)value{
    Node *newValue = [[Node alloc] init];
    newValue.value = value;
    
    if (self.header.next == nil) {
        newValue.preve = self.finsh;
        self.finsh.next = newValue;
        newValue.next = nil;
        self.header = newValue;
        
    }else{
        
        newValue.preve = self.finsh;
        newValue.next = self.header;
        self.finsh = nowValue;
        
    }
    NSLog(@"%ld",self.header.value);
    
}

//queue get
-(NSInteger )get
{
   // Node *nowValue = [[Node alloc] init];
    //nowValue = self.header;
    //NSLog(@"%@",self.header);
    
//    if (self.header.next == ) {  //Queue가 비어있으니 오류!!
//        self.header.preve = self.finsh;
//        nowValue = self.finsh;
//        self.finsh.next = nil;
//        NSLog(@"%@",nowValue);
//    }      //제일 처음노드를 반환하고 리스트에서 삭제
//

    NSInteger nowValue;
    nowValue = self.finsh.value;
    
    
    
    
    
    return nowValue;

}





@end
