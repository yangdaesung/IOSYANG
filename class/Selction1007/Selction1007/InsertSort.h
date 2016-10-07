//
//  InsertSort.h
//  Selction1007
//
//  Created by Yang on 2016. 10. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface InsertSort : NSObject

- (NSArray *)insertSort:(NSArray *)list;
- (NSMutableArray *)smallSort:(NSArray *)oldList newValue:(NSInteger)newValue;

@end
