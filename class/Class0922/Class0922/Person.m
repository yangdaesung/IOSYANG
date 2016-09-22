//
//  Person.m
//  Class0922
//
//  Created by Yang on 2016. 9. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Person.h"
#import "animal.h"
@implementation Person

- (id)adopt:(animal *)saram {
  
    
    NSLog(@"%@를 입양 했습니다.",saram.name);
    return  nil;
    
    
}

- (id)eat:(NSString *)what {

    NSLog(@"사람 %@은 집밥을 먹습니다.",self.name);
    return nil;

}
@end
