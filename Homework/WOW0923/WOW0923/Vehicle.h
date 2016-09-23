//
//  Vehicle.h
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameClass.h"

@interface Vehicle : NSObject

@property NSUInteger speed;
@property NSString *name;



- (id)sit:(GameClass *)who speed:(NSUInteger)speed;


@end
