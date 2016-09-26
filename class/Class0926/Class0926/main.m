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
int main(int argc, const char * argv[]) {
  
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
    
    
    
    return 0;
}
