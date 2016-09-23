//
//  student.h
//  class0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Person.h"

@interface student : Person


@property NSString *school;
@property NSInteger grade;
@property NSString *credit;

//이름,도시,학교,학년
-(instancetype)initWithName:(NSString *)name city:(NSString *)city
                 schoolName:(NSString *)school grade:(NSInteger)grade;





@end
