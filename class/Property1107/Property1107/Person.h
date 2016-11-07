//
//  Person.h
//  Property1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : NSObject {
    
    NSString *_personName;
    NSInteger _age;
    CGFloat _weight;
}

- (NSString *)personName;
- (NSInteger)age;

- (void)setPersonName:(NSString *)personName;
- (void)setAge:(NSInteger)age;
- (void)setWeight:(CGFloat)weight;

- (void)printPersonInfo;
@end
