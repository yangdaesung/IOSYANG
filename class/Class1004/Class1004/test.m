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


//삼각수
+(void)factorial:(NSInteger)num
{
    NSInteger result = 0;
    for (NSInteger i=1; i<=num; i++) {
        
        result  =  result + i;
        
    }
    NSLog(@"%ld",result);
    
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
-(NSArray *)songTitles:(NSDictionary *)data
{
    
    
    

    
}










    


@end
