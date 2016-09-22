//
//  Teacher.h
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Person.h"
#import "Student.h"
@interface Teacher : Person


@property id subject;

- (id) teach:(Student *)smoeone;

@end
