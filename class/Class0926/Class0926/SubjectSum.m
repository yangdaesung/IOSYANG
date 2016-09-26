//
//  SubjectSum.m
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "SubjectSum.h"


@implementation SubjectSum

//초기화를 해주어야한다!
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totalScore = 0;
        self.subjectCount = 0;
    }
    return self;
}
//점수를 받아서 토털변수에 더한다.
//더해진 점수마다 과목 카운트를 하나씩 올린다.
- (void)addScore:(NSInteger)score
{
    self.totalScore = self.totalScore + score;
    self.subjectCount = self.subjectCount + 1;
    
    
    
}

//과목 점수 평균을 구해 반환을 해준다.
- (CGFloat)average
{
    
    CGFloat avergeTemp = (CGFloat)self.totalScore / (CGFloat)self.subjectCount;
    
    
    return avergeTemp;
    
}



@end
