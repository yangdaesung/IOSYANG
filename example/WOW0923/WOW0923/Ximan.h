//
//  Ximan.h
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "GameClass.h"

@interface Ximan : GameClass

@property NSString *location;




- (id)totemSumon;
- (id)lavaBust:(GameClass *)who;
- (id)lightingBolt:(GameClass *)who;

@end
