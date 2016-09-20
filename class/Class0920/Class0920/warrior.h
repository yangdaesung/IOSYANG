//
//  warrior.h
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
*전사는 근접형 직업입니다.
*마법력은 약하나 근접전으론 최고의 직업 중 하나입니다.
*마력은 적지만 체력은 타 직업 통틀어 가장 많습니다.
*무기로는 칼과 방패를 들 수가 있습니다.
*@discussion 전사
*@version 0.1
*/
@interface warrior : NSObject

@property id mana;
@property id health;
@property id physicalPower;
@property id weapon;




- (id)shield;
- (id)cry;
- (id)sword;
- (id)swordto:(id)attack;
- (id)attackto:(id)someone  skill:(id)skillto;

@end
