//
//  Dimensional shapes.h
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DimensionalShapes : NSObject







- (CGFloat)squareArea:(CGFloat)length;
- (CGFloat)squarePerimeter:(CGFloat)length;
- (CGFloat)rectangleArea:(CGFloat)height rectangleArea2:(CGFloat)longto;
- (CGFloat)rectanglePerimeter:(CGFloat)longto rectanglePerimeter2:(CGFloat)height;
- (CGFloat)circleArea:(CGFloat)radius;
- (CGFloat)circleCircumference:(CGFloat)radius;
- (CGFloat)triangle:(CGFloat)bottom triangle2:(CGFloat)height;
- (CGFloat)trapezoid:(CGFloat)height trapezoid2:(CGFloat)alpha trapezoid3:(CGFloat)bottom;
- (CGFloat)cubeVolume:(CGFloat)length;
- (CGFloat)solidVolume:(CGFloat)weight solidVolume2:(CGFloat)longto solidVolume3:(CGFloat)height;
- (CGFloat)cylinder:(CGFloat)redius cylinder2:(CGFloat)height;
- (CGFloat)sphere:(CGFloat)radius;
- (CGFloat)cone:(CGFloat)radius cone2:(CGFloat)height;

@end
