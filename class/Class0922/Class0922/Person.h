//
//  Person.h
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "animal.h"
@interface Person : NSObject

@property NSString *name;
@property NSInteger age;

- (id)eat:(NSString *)what;
- (id)adopt:(animal *)saram;





@end
