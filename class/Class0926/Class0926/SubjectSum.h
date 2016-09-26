//
//  SubjectSum.h
//  Class0926
//
//  Created by Yang on 2016. 9. 26..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 2.property 만들기
 3.method만들기
 -과목 점수 더하는 함수
 -평균 구하는 함수
 */

@interface SubjectSum : NSObject

@property NSInteger totalScore;
@property NSInteger subjectCount;


- (void)addScore:(NSInteger)score;
- (CGFloat)average;









@end
