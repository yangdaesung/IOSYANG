//
//  ToolBox.h
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject


+(CGFloat)inchToCm:(CGFloat)inch;
+(CGFloat)cmToInch:(CGFloat)cm;

+(CGFloat)m2ToFlat:(CGFloat)flat;
+(CGFloat)flatToM2:(CGFloat)m2;

+(CGFloat)fcToCc:(CGFloat)fc;
+(CGFloat)ccToFc:(CGFloat)cc;

+(CGFloat)kbToMb:(CGFloat)kb;
+(CGFloat)mbTokb:(CGFloat)mb;

+(CGFloat)hourToSecond:(CGFloat)hour minToSecond:(CGFloat)min second:(CGFloat)second;




@end
