//
//  Dimensional shapes.m
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "DimensionalShapes.h"

@implementation DimensionalShapes : NSObject
//square 넓이 값
- (CGFloat)squareArea:(CGFloat)length
{
    return  length * length;
}
//square 둘레 값
- (CGFloat)squarePerimeter:(CGFloat)length
{
    return 4*length;
}
//rectangle 넓이 값
- (CGFloat)rectangleArea:(CGFloat)height rectangleArea2:(CGFloat)longto
{
    return longto * height;
}
//rectangle 둘레 값
- (CGFloat)rectanglePerimeter:(CGFloat)longto rectanglePerimeter2:(CGFloat)height
{
    return 2*longto + 2*height;
}
//circle 넓이 값
- (CGFloat)circleArea:(CGFloat)radius
{
    return 3.14*2*radius;
}
//circle 원의둘레 값
- (CGFloat)circleCircumference:(CGFloat)radius
{
    return  2*3.14*radius;
}
//triangle 넓이 값
- (CGFloat)triangle:(CGFloat)bottom triangle2:(CGFloat)height
{
    return bottom*height/2;
}
//trapezoid 넓이 값
- (CGFloat)trapezoid:(CGFloat)height trapezoid2:(CGFloat)alpha trapezoid3:(CGFloat)bottom
{
    return height*(alpha + bottom)/2;
}
//cube 부피 값
- (CGFloat)cubeVolume:(CGFloat)length
{
    return 3*length;
}
//solid 부피 값
- (CGFloat)solidVolume:(CGFloat)weight solidVolume2:(CGFloat)longto solidVolume3:(CGFloat)height
{
    return weight*longto*height;
}
//cylinder 부피 값
- (CGFloat)cylinder:(CGFloat)redius cylinder2:(CGFloat)height
{
    return 3.14*redius*redius*height;
}
//sphere 부피 값
- (CGFloat)sphere:(CGFloat)radius
{
    return 4.0/3.0*3.14*radius*radius*radius;
}
//cone 부피 값
- (CGFloat)cone:(CGFloat)radius cone2:(CGFloat)height
{
    return 1.0/3.0*radius*radius*height;
}
    
    

@end
