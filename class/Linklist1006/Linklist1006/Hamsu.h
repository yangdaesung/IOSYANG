//
//  Hamsu.h
//  Linklist1006
//
//  Created by Yang on 2016. 10. 6..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Hamsu : NSObject
@property Node *header;
@property Node *last;
@property NSInteger lastIndex;

-(void)push:(NSInteger)value;
-(void)push:(Node *)nowNode newValue:(NSInteger)value;
-(void)pop;
-(BOOL)empty;
@end
