//
//  human.m
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "human.h"

@implementation human

-(id)eat {
    NSLog(@"무엇을 먹습니다");
    return nil;
}

-(id)run {
    NSLog(@"달리고 있습니다");
    return nil;
}

-(id)think {
    NSLog(@"생각하고 있습니다");
    return nil;
}

-(id)write {
    NSLog(@"쓰고 있습니다");
    return nil;
}

-(id)see {
    NSLog(@"보고 있습니다");
    return nil;
}
-(id)eatto:(id)someone {
    NSLog(@"%@을 먹고 있습니다.", someone);
    return nil;
}

-(id)runto:(id)location byspeed:(id)speed with:(id)someone {
    NSLog(@"%@을 달려가고 있는데 속도가 %@km가 나오는데 %@와같이간다.",location,speed,someone);
    return nil;
}

-(id)tolkto:(id)someone topic:(id)topic language:(id)language {
    NSLog(@"%@와 대화를 하는데 %@얘기를 %@로 얘기한다.", someone,topic,language);
    return nil;
}


@end
