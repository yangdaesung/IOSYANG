//
//  Person.h
//  exam0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSUInteger age;
@property NSString *gender;


- (id)eat:(NSString *)what;


@end
