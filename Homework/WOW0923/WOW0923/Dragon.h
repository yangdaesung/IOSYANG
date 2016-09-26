//
//  Dragon.h
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameClass.h"

@interface Dragon : GameClass








- (id)fly:(NSString *)where;
- (id)breath:(GameClass *)who;
- (id)swipes:(GameClass *)who;
- (id)howling:(GameClass *)who;

@end
