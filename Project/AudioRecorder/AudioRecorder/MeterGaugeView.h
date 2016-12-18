//
//  MeterGaugeView.h
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeterGaugeView : UIView
{
    CGImageRef imgGauge;
    
    
    double  value;

}

@property  double value;

-(void) drawGaugeBitmap:(CGContextRef)context;

@end
