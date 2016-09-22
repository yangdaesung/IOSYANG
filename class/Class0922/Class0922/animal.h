//
//  animal.h
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface animal : NSObject

@property NSInteger weihght;
@property NSUInteger age;
@property NSString *name;
@property NSInteger height;
@property NSString *howl;


- (id)eat:(id)what;
- (id)cry:(animal *)howling;
- (id)run:where;



@end
