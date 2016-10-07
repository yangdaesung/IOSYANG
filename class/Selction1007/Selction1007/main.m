//
//  main.m
//  Selction1007
//
//  Created by Yang on 2016. 10. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Selection.h"
#import "Bubble.h"
#import "InsertSort.h"
int main(int argc, const char * argv[]) {
   
    //NSArray *data =@[@1,@5,@3,@6,@4,@2,@7];
    
    NSArray *data =@[@1,@3,@5];
    
//    Selection *daSort = [[Selection alloc] init];
//    NSArray *sortdeList=[daSort sort:data];
//    NSLog(@"sortedList %@",sortdeList);
    
    
//    Bubble *bubble = [[Bubble alloc] init];
//    
//    NSArray *resultBubbleSort = [bubble bubbleSort:data];
//    NSLog(@"%@",resultBubbleSort);
//
//    NSInteger testNumber = 1;
//    [@(testNumber) compare:@4];
//    
//    
//    if ([@(testNumber) compare:@4] ){
//        NSLog(@"test");
    //}
    
    InsertSort *insertSort = [[InsertSort alloc] init];
    
    [insertSort insertSort:data];
//    NSArray *result = [insertSort smallSort:data newValue:4];
//    
//    NSLog(@"%@", result);
    
    
    return 0;
}
