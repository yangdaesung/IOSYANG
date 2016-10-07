//
//  Selection.m
//  Selction1007
//
//  Created by Yang on 2016. 10. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Selection.h"




@implementation Selection


-(NSArray *)sort:(NSArray *)list
{
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    
    
    //리스트의 시작부터 끝까지 확인
    for (NSInteger i = 0; i < unSortedList.count; i++) {
        //최소값 구하기
        NSInteger minValue = [unSortedList[i] integerValue];
        NSInteger minIndex = i;
        //i 다음번째 숫자의 가장 작은수를 찾아내기
        for (NSInteger j = i; j < unSortedList.count; j++) {
            NSInteger compareValue = [unSortedList[i] integerValue];
           
            
            if (minValue > compareValue) {
                minValue = compareValue;
                minIndex = j;
            }
        
        
        }
        //리스으틔 데이터와 다르면 교환
        //i번째는 minIndex , minIndex는 i번째로
        if (i != minIndex) {
            [unSortedList exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
        }
        
        
        
    }
    
    
    
    
    
    
    
    return unSortedList;
}








@end
