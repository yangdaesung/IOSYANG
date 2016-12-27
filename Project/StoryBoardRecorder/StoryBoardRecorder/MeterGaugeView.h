//
//  MeterGaugeView.h
//  StoryBoardRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MeterGaugeView : UIView {
    
    CGImageRef imgGauge;
    
    
    double  value;
}


//-(void) drawLine:(CGContextRef)context;
-(void) drawGaugeBitmap:(CGContextRef)context;
//-(void) DrawValue:(CGContextRef)context CenterX:(int)pCenterX  CenterY:(int)CenterY;


@property  double value;


@end
