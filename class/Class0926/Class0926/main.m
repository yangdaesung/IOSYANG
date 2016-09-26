//
//  main.m
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubjectSum.h"
#import "DimensionalShapes.h"
#import "ToolBox.h"
#import "IfExample.h"
int main(int argc, const char * argv[]) {

    //도형 계산기!!
    DimensionalShapes *shap = [[DimensionalShapes alloc] init];
    
    NSLog(@"%.3lf 입니다.",[shap squareArea:1]);
    NSLog(@"%.3lf 입니다.",[shap squarePerimeter:2]);
    NSLog(@"%.3lf 입니다.",[shap rectangleArea:3 rectangleArea2:5]);
    NSLog(@"%.3lf 입니다.",[shap rectanglePerimeter:3 rectanglePerimeter2:3]);
    NSLog(@"%.3lf 입니다.",[shap circleArea:4]);
    NSLog(@"%.3lf 입니다.",[shap circleCircumference:5]);
    NSLog(@"%.3lf 입니다.",[shap triangle:5 triangle2:5]);
    NSLog(@"%.3lf 입니다.",[shap trapezoid:5 trapezoid2:5 trapezoid3:5]);
    NSLog(@"%.3lf 입니다.",[shap cubeVolume:3]);
    NSLog(@"%.3lf 입니다.",[shap solidVolume:3 solidVolume2:3 solidVolume3:3]);
    NSLog(@"%.3lf 입니다.",[shap cylinder:5 cylinder2:5]);
    NSLog(@"%.3lf 입니다.",[shap sphere:5]);
    NSLog(@"%.3lf 입니다.",[shap cone:5 cone2:5]);
    //---------------------------------------------------------------------------도형계산기
    
    //성적 평균 내기 !
    //객체 생성
    SubjectSum *sum = [[SubjectSum alloc] init];
    //점수 추가
    [sum addScore:100];
    [sum addScore:40];
    [sum addScore:90];
    [sum addScore:50];
    //평균
    
    CGFloat average = [sum average];
    NSLog(@"%f",average);
    //----------------------------------------------------------------------------성적평균내기
    
    //변환기 만들기 !
    
    NSLog(@"%lf",[ToolBox hourToSecond:1 minToSecond:13 second:20]);
    
    //----------------------------------------------------------------------------변환기
    
    //월의 마지막날 구하기
    NSInteger  day = [IfExample lastDayOfMonth:5];
    NSLog(@"마지막 날 : %ld",day);
    
    //----------------------------------------------------------------------------마지막날 구하기
    
    
    //성적 등급 및 포인트 받기 !
    [IfExample grade:100];
   
    
    //반올림 함수
    CGFloat round = [IfExample roundNum:3.4552];
    NSLog(@"%.3lf",round);
    
    //윤년
    
    [IfExample checkLeapYear:1400];
    return 0;
}
