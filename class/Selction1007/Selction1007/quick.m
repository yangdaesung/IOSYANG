//
//  quick.m
//  Selction1007
//
//  Created by Yang on 2016. 11. 25..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "quick.h"

@implementation quick

-(NSArray *)quickSort:(NSArray *)unSortedList{
    
    NSMutableArray *unSortedMutable = [[NSMutableArray alloc]initWithArray:unSortedList];
    
    // quickSort 될 배열
    NSMutableArray *sortedArray = [[NSMutableArray alloc]init];
    
    NSMutableArray *lessArray = [[NSMutableArray alloc]init];
    NSMutableArray *greaterArray = [[NSMutableArray alloc]init];
    
    if([unSortedList count] <1){
        
        return nil;
    }
    
    //pivot 정하기
    //unSortedMutable의 Index 0번째 값을
    //pivotValue로 만들고 그 값을 unSortedMutable에서 지운다
    //pivotValue 보다 작으면 lessArray // 그 이외는 greaterArray
    NSNumber *pivotValue = [[NSNumber alloc]init];
    
    pivotValue = unSortedMutable[0];
    
    [unSortedMutable removeObjectAtIndex:0];
    
    for(NSNumber *num in unSortedMutable){
        
        if(num < pivotValue){
            [lessArray addObject:num];
        }else{
            [greaterArray addObject:num];
        }
        
    }
    
    //병합
    //결국 모든 값은 한번씩은 pivotValue가 되고 그 상태에서 정렬된 배열에 들어간다.
    
    [sortedArray addObjectsFromArray:[self quickSort: lessArray]];
    
    [sortedArray addObject:pivotValue];
    
    [sortedArray addObjectsFromArray:[self quickSort: greaterArray]];
    
    return sortedArray;
    
}

@end
