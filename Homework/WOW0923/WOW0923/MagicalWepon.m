//
//  MagicalWepon.m
//  WOW0923
//
//  Created by Yang on 2016. 9. 23..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "MagicalWepon.h"

@implementation MagicalWepon


//마법무기를 장착해서 마법력 올리기 !!

-(id)aaadd:(GameClass *)who{
    
    NSUInteger wepon = who.magicalpower;
    who.magicalpower =self.magicalDamege+ who.magicalpower;
    
    NSLog(@"%@는 %@이란 무기를 껴서 마법데미지가 %ld 증가하여 마법데미지가 %lu에서 %lu로 증가하였습니다.",
          who.name,self.name,self.magicalDamege,wepon,who.magicalpower);
    return nil;
}





@end
