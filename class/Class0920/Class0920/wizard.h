//
//  wizard.h
//  Class0920
//
//  Created by Yang on 2016. 9. 20..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**마법력을 이용하여 공격하는 직업으로 스펠링이 오래걸리지만 파괴적인 딜을 내는 직업입니다.
 *체력이 약한 대신 공격력이 매우 강합니다.
 *궁극기 스킬의 쿨다운이 길다는 장점이 있습니다.
 *@discussion 마법사
 *@version 0.1
 */
@interface wizard : NSObject

@property id health;
//마나는 마법사가 마법을 쓸 수 있게 만드는 원천입니다. 마나가 없으면 마법을 쓸 수가 없습니다.
@property id mana;
//마법력을 말하는 것으로 스킬레벨이 올라갈때마다 마법력도 증가될 것입니다.
@property id magicalPower;
//지팡이를 많이 쓰지만 보조무기와 한손무기를 껴서 마법력을 좀더 증폭 시킬 수 있습니다.
@property id weapon;


//마법사가 주로 사용하는 무기 중 하나로 마법력을 증폭시켜주는 무기 입니다.
- (id)wand;
//마나를 이용해 쓸수 있는 스킬중에 하나로 적에게 불덩이를 날리는 마법입니다.
- (id)fireball;
//마나를 이용하는 스킬 중 하나로 하나의 화살이 적에게 날리는 마법입니다.
- (id)magicmissile;
//아이스스피어로
- (id)icespear:(id)mon monster:(id)who inventory:(id)item;



@end
