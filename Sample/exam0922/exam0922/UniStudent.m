//
//  UniStudent.m
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "UniStudent.h"

@implementation UniStudent


- (id) eat:(Person *)what {
    
    NSString *qee = what.name;
    NSLog(@"%@은 학식을 먹는다.",qee);
    
    return nil;
    
}




@end
