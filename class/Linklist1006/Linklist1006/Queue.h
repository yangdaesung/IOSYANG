//
//  Queue.h
//  Linklist1006
//
//  Created by Yang on 2016. 10. 8..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Queue : NSObject

@property Node *header;

@property Node *finsh;


-(void)quPush:(NSInteger)Value;
-(void)quPush:(Node *)nowValue newValue:(NSInteger)value;
-(void)get;



@end
