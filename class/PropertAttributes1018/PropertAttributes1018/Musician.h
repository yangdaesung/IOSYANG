//
//  Musician.h
//  PropertAttributes1018
//
//  Created by Yang on 2016. 11. 8..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Musician : NSObject

@property (nonnull) NSString *groupName;
//null_resettable =처음부터 있어야 한다..
@property (null_resettable) NSNumber *memberCount;
@property (nullable,getter=companyName) NSString *company;
@property (null_unspecified) NSString *manager;






- (instancetype)initWithName:( NSString * _Nonnull )name
                 memberCount:( NSNumber * _Nonnull )memberCount;


@end
