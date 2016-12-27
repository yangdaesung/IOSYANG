//
//  main.m
//  Sk_chapter1
//
//  Created by Yang on 2016. 12. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"hello ";
        NSInteger len = [str length];
        NSLog(@"length : %ld",len);
        
        //모두다 대문자로 나온다..
        NSLog(@"Upper case string : %@",[@"abc" uppercaseString]);
        //앞에한글자만 대문자로
        NSLog(@"capitalizedString : %@",[@"abc" capitalizedString]);
        
        NSString *str1 = @"1";
        NSComparisonResult result = [str1 compare:@"09"];
        NSLog(@"result = %ld",result);
        
        NSComparisonResult str2 = [str1 compare:@"09" options:NSNumericSearch];
        NSLog(@"result = %ld",str2);
        
    }
    return 0;
}
