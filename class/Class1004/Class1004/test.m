//
//  test.m
//  Class1004
//
//  Created by Yang on 2016. 10. 4..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "test.h"

@implementation test

+(void)getMutiplicationTable:(NSInteger)num
{
    NSInteger i = 0;
    
    while (i < 9) {
        
        NSInteger yang = num += 3;
        NSLog(@"%ld",yang);
        i+=1;
        
    }
    
}


//3곱하기 !!
+(void)getMutiplicationTabe:(NSInteger)num
{
    for (NSInteger i = 1; i<10; i++) {
        
        NSLog(@"%ld * %ld = %ld",num,i,num*i);
    }
}

//4곱하기 !!

+(void)fourmuti:(NSInteger)num
{
    for (NSInteger i = 1; i<10; i+=1) {
        NSLog(@"%ld * %ld = %ld",num,i,num*i);
    }
    
    
    
    
}

//삼각수
+(void)factorial:(NSInteger)num
{
    NSInteger result = 0;
    for (NSInteger i=1; i<=num; i+=1) {
        
        result  =  result + i;
        
    }
    NSLog(@"%ld",result);
    
}


//각자리수 더하는 메서드 !
+(void)minusFactorial:(NSUInteger)num

{
    NSInteger result = 0;
    while (num > 0) {
        
        
        result = result+num%10;
        num=num/10;
        

    }
    NSLog(@"%ld",result);
}

//369 게임
+(void)game369:(NSInteger)num
{
    
    for (NSInteger i =1; i<=num; i++) {
        if (i%10 ==3||i%10 == 6 || i%10 == 9) {
            NSLog(@"*");
            
        }else  {
            
            if(i%100==0){
                
                NSLog(@"*");
                
            }else{
            NSLog(@"%ld",i);
            }
            

        }
    }
    
    
}


//3574 에서 4573으로 바꾸기
+(void)numPlus:(NSInteger)num
{
    
    NSInteger result = 0;
    while (num > 0) {
        result = result + num%10;
        num = num/10;
        
    }
    
    
    
}








-(NSString *)allbumTitle:(NSDictionary *)data
{
    if (data !=nil) {
        NSDictionary *album_info = [data objectForKey:@"album_info"];
        NSString *title = [album_info objectForKey:@"title"];
        return title;
    }
    return nil;
}











    


@end
