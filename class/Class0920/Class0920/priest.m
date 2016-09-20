//
//  priest.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "priest.h"

@implementation priest

- (id) healing {
    NSLog(@"힐을 하고 있습니다.");
    return nil;
}

-(id) heast {
    NSLog(@"버프를 받았습니다");
    return nil;
}

-(id) prayer {
    NSLog(@"기도를 하고 있습니다");
    return nil;
}

-(id)blessing {
    NSLog(@"축복을 해줬습니다");
    return nil;
}
-(id)buff:(id)someone who:(id)user monster:(id)monsterto {
    NSLog(@"%@ 버프를 %@에게 주고 %@를 쉽게 처치했습니다",someone,user,monsterto);
    return nil;
}

-(id) heal:(id)someone who:(id)fried {
    NSLog(@"%@를 %@에게 주었습니다.",someone,fried);
    return nil;
}









@end
