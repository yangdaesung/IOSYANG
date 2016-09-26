//
//  ToolBox.m
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

//인치에서 센치로 변환
+(CGFloat)inchToCm:(CGFloat)inch
{
    return inch * 2.54;
}
//센치에서 인치로 변환
+(CGFloat)cmToInch:(CGFloat)cm
{
    return cm *0.393701;
}
//제곱미터에서 평수로 변환
+(CGFloat)m2ToFlat:(CGFloat)flat
{
    return flat * 0.3025;
}
//평수에서 제곱미터로 변환
+(CGFloat)flatToM2:(CGFloat)m2
{
    return m2 * 3.305785;
}
//화씨에서 섭씨로 변환
+(CGFloat)fcToCc:(CGFloat)fc;
{
    return (fc - 32) / 1.8;
}
//섭씨에서 화씨로 변환
+(CGFloat)ccToFc:(CGFloat)cc
{
    return cc * 1.8 + 32;
}
//kb 를 mb로 변환
+(CGFloat)kbToMb:(CGFloat)kb
{
    return kb * 0.000977;
}
//mb 를 kb로 변환
+(CGFloat)mbTokb:(CGFloat)mb
{
    return mb * 1024;
}
//시간을 더해주는 식
+(CGFloat)hourToSecond:(CGFloat)hour minToSecond:(CGFloat)min second:(CGFloat)second
{
    return (hour * 3600) + (min * 60) + second;
    
}





@end
