//
//  Warrior.h
//  exam0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

@property id health;
@property id rage;
@property id strength;
@property id physicalAttack;
@property id name;


- (id)cry;
- (id)shildAttack:(id)to;
- (id)jump;
- (id)charge;


@end
