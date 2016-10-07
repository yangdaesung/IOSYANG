//
//  InsertSort.m
//  Selction1007
//
//  Created by Yang on 2016. 10. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort

//NSArray *data =@[@1,@5,@3];

-(NSArray *)insertSort:(NSArray *)list
{
    NSMutableArray *unSortedList = [[NSMutableArray alloc]initWithArray:list];
    NSMutableArray *sortedList = [[NSMutableArray alloc] init];
    [sortedList addObject:@([unSortedList [0] integerValue])];
    
    for (NSInteger i = 0; i < unSortedList.count-1; i++) {
//        NSInteger starter = [unSortedList [i] integerValue];
        NSInteger starter = [sortedList[sortedList.count-1] integerValue];
        NSInteger starterIndex = sortedList.count-1;
        [sortedList addObject:@(starter)];
        
        //NSLog(@"%@ , %@",@(starter),sortedList[0]);
        
        
        for (NSInteger j = 1; j <unSortedList.count; j++) {
            NSInteger compare = [unSortedList [j] integerValue];
            NSInteger compareIndex = j;
            
            if (starter > compare) {
                sortedList = [self smallSort:sortedList newValue:compare];
                
            }
        }
    }
    return nil;
}


- (NSMutableArray *)smallSort:(NSArray *)oldList newValue:(NSInteger)newValue
{
    NSMutableArray *sortedList = [[NSMutableArray alloc] initWithArray:oldList];
    //NSLog(@"%ld",newValue);
//    [sortedList addObject:@(newValue)];
    [sortedList insertObject:@(newValue) atIndex:0];
    //NSLog(@"oldlist:%@",sortedList);
    
    
    for (NSInteger i = 0; i < sortedList.count-1; i++) {
        if ([sortedList [i] integerValue] > [sortedList [i+1] integerValue]) {
            [sortedList exchangeObjectAtIndex:i withObjectAtIndex:i+1];
            //NSLog(@"test");
        }else{
            break;
        }
    }
    
    return sortedList;


}
@end
