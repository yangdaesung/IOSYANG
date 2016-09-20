//
//  priest.h
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *사제는 보조형 직업으로 치료 해주거나 버프를 해주는 직업입니다.
 *마법사와 마찬가지로 체력은 약하고 공격력도 약한편이나 힐을 해주는 장점이 있습니다.
 *마나와 신성력을 같이 사용하는 존재로 신성력이 높을수록 힐량이 늘어납니다.
 *@version 0.1
 *
 */
@interface priest : NSObject

@property id health;
@property id mana;
@property id divine;
@property id god;


- (id) healing;
- (id) heast;
- (id) prayer;
- (id) blessing;
- (id) buff:(id)someone who:(id)user monster:(id)monsterto;
- (id) heal:(id)someone who:(id)fried;




@end
