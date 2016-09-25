//
//  Ximan.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "Ximan.h"
#import "GameClass.h"
@implementation Ximan

-(id)totemSumon{

    NSLog(@"%@에서 주변에 토템이 설치 됩니다. ",self.location );
    return nil;
    
}

-(id)lavaBust:(GameClass *)who {
    
    NSUInteger lava = who.health;
    who.health =lava - self.magicalpower;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 , 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,self.magicalpower,lava,who.health);
    
    return  nil;

}


-(id)lightingBolt:(GameClass *)who{
    
    NSUInteger bolt = who.health;
    who.health =bolt - self.magicalpower;
    
    NSLog(@"%@에게 %ld의 피해를 입히고 , 체력이 %lu에서 %lu로 변경되었습니다.",
          who.name,self.magicalpower,bolt,who.health);

    return  nil;
    
}



@end
