//
//  DLinkedList.h
//  Class0928
//
//  Created by Yang on 2016. 9. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
# import "Node.h"
@interface DLinkedList : NSObject


@property Node *header;

@property NSInteger lastNodeIndex;
@property NSInteger firstNodeIndex;






-(void)addFirstNodeValue:(NSInteger )newValue;
-(void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value;
-(void)printNode:(Node *)node;
-(void)printNode;


@end
