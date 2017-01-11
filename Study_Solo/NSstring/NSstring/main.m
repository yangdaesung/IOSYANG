//
//  main.m
//  NSstring
//
//  Created by Yang on 2017. 1. 4..
//  Copyright © 2017년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"This is NSString";
        
        
        //immutable class 새로운 문자열로 리턴을 받는다.
        //받을 객체를 만들어야 한다.
        NSString *result;
    
        //6번째부터 글자가 나온다,
        result = [str substringFromIndex:6];
        //3번째까지 글자가 나온다.
        result = [str substringToIndex:3];
        
        //응용문제
        result = [[str substringToIndex:11]substringFromIndex:8];
        
        //lowercaseString = 소문자 , uppercaseString =  대문자
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result : %@",result);
        
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@" yang" atIndex:7];
        NSLog(@"result : %@",mstr);
    }
    return 0;
}
