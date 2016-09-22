//
//  Teacher.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (id)teach:(Student *)smoeone {
    
    NSLog(@"선생 %@가 학생 %@에게 %@과목을 가르칩니다.",self.name,smoeone.name,self.subject);
    
    return nil;
}
@end
