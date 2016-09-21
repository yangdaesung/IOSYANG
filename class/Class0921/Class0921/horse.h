//
//  horse.h
//  Class0921
//
//  Created by Yang on 2016. 9. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface horse : NSObject

@property NSUInteger leg;
@property NSString *mouth;
@property NSString *ear;
@property NSString *tail;

- (id)eat:(id)what;
- (id)run:(id)where;
- (id)cry:(id)what;
- (id)listing:(id)what;


@end
