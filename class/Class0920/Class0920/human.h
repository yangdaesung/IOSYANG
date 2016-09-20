//
//  human.h
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
*사람은 여러생각을 할수 있는 포유류 입니다.
*생각하고 말하고 쓸수 있는 지성있는 생명체 입니다.
*사람은 국적 언어 종교 불문하고 다똑같은 하나의 생명체 입니다.
*@version 0.1
*
*/
@interface human : NSObject

@property id name;
@property id weight;
@property id height;
@property id character;
@property id footsize;


- (id)run;
- (id)runto:(id)location byspeed:(id)speed with:(id)someone;
- (id)think;
- (id)eat;
- (id)eatto:(id)someone;
- (id)write;
- (id)see;
- (id)tolkto:(id)someone topic:(id)topic language:(id)language;




@end
