//
//  IfExample.m
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "IfExample.h"

@implementation IfExample

//안전한 방법이다.
+(BOOL)isEvenNumber:(NSInteger)number
{
    BOOL isEven = NO;
    if (number%2 == 0) {
        //짝수
        isEven = YES;
    } else {
        isEven = NO;
    }
    return isEven;
}
//리턴값이 바로 내려오기 때문에 위험하다.
+(BOOL)isEvenNumber2:(NSInteger)number
{
    if (number%2 == 0) {
        //짝수
        return  YES;
    } else {
        //홀수
        return NO;
    }

}

//switch문 사용법
+(void)scholarshopWithGrade:(NSInteger)grade
{
    switch (grade) {
        case 1:
            NSLog(@"전액장학금");
            break;
        case 2:
            NSLog(@"50%%장학금");
            break;
        case 3:
            NSLog(@"30%%장학금");
            break;
        default:
            NSLog(@"장학금 없음");
            break;
    }
    
}

//시험 점수를 받아서 해당 점수의 등급을 반환
+(NSString *)grade:(NSInteger)score
{
    NSString *grade;
    CGFloat point;
    
    if (score <=100) {
        grade=@"A";
        point=4.5;
        NSLog(@"학점 : %@ , 점수 : %f",grade,point);
    } else if (score <=90 || point <=4.0){
        grade=@"B";
        point=4.0;
        NSLog(@"학점 : %@ , 점수 : %f",grade,point);
    } else if (score <=80 || point <=3.5){
        grade=@"C";
        point=3.5;
        NSLog(@"학점 : %@ , 점수 : %f",grade,point);
    } else if (score <=70 || point <=3.0){
        grade=@"D";
        point=3.0;
        NSLog(@"학점 : %@ , 점수 : %f",grade,point);
    }
    
    return grade;
    
    
}
//월의 마지막날 구하기
+(NSInteger)lastDayOfMonth:(NSInteger)mouth
{
    NSInteger lastDay = 0;
    
    switch (mouth) {
        case 2:
            lastDay = 28;
            break;
        case 4:
            lastDay = 30;
            break;
        case 6:
            lastDay = 30;
            break;
        case 9:
            lastDay = 30;
            break;
        case 11:
            lastDay = 30;
            break;
        default:
            lastDay = 31;
            break;
    }
    return lastDay;
}

//절대값 문제
+(NSInteger)bigNum:(NSInteger)number{
    
    
if(number<0){
number = number * (-1);
}

return number;
}

//반올림 문제

+(CGFloat)roundNum:(CGFloat)num

{
    CGFloat selectRoundNum = 0;
    
    selectRoundNum = num + 0.005;
    
    NSInteger sumNum = selectRoundNum * 100;
    
    CGFloat resultNum = sumNum * 0.01;
    
    
//    num = ((num + 0.005) * 100);
//    CGFloat newNum = (NSInteger)num;
//    num = newNum / 100;
    
    return resultNum;
}

    

//윤년 구하는 문제
+(void)checkLeapYear:(NSInteger)year{
   NSString *yun = @"윤년";
    if ((year%4==0 && year%100!=0) || year%400==0){
        NSLog(@"%@이 맞습니다.",yun);
    } else {
        NSLog(@"%@이 아닙니다.",yun);
    }
}


@end


