//
//  Bubble.m
//  Selction1007
//
//  Created by Yang on 2016. 10. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Bubble.h"

@implementation Bubble

//NSArray *data =@[@1,@5,@3,@6,@4,@2,@7];
+(NSArray *)bubbleSort:(NSArray *)list
{
    
    NSMutableArray *bubbleArray = [[NSMutableArray alloc] initWithArray:list];
    
    for (NSInteger i = 0; i < bubbleArray.count-1; i++) {
        //NSLog(@"i = %ld",i);
        //for (NSInteger j= i+1; j < bubbleArray.count; j++) {
        for (NSInteger j= 0; j < bubbleArray.count-1; j++) {
            NSInteger starter = [bubbleArray[j] integerValue];
            NSInteger compare = [bubbleArray[j+1] integerValue];
            
//            NSLog(@"j = %ld",j);
            
            if (starter > compare) {
                [bubbleArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
//                NSLog(@"%ld , %ld",starter,compare);
            }
            
            
        }
    }
    return bubbleArray;
    
}


@end
