//
//  Student.m
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Student.h"

@implementation Student


- (id) eat:(Person *)what {
    
    NSString *wdd = what.name;
    NSLog(@"%@은 급식을 먹는다.",wdd);
    
    return nil;
    
}


@end
