//
//  Musician.m
//  PropertAttributes1018
//
//  Created by Yang on 2016. 11. 8..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Musician.h"

@implementation Musician



//초기화
- (instancetype)init
{
    self = [super init];
    if (self) {
        _memberCount = @0;
    }
    return self;
}




- (instancetype)initWithName:( NSString * _Nonnull )name
                 memberCount:( NSNumber * _Nonnull )memberCount
{
    self = [self init];
    if (self) {
      _groupName = name;
      _memberCount = memberCount;
    }
    return self;
    
}



@end
