//
//  monk.h
//  CodeClass
//
//  Created by Yang on 2016. 9. 19..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


/*몽크란 수도사라를 뜻하는 말로 기의 능력을 통해 자신을 단련하는 사람들입니다.
힐러가 되어서 남을 치료해주거나 버핑을 해줄 수 있고 아니면 탱커가 되어서 남들보다 앞서 막아주고 어그로를 땡겨주는 직업입니다.*/
@interface monk : NSObject

//마나란 마법을 쓸 수 있는 기력이라고 볼 수 있습니다.
@property id Mana;
//힐이란 체력을 체워주는 마법의 일종입니다.
@property id heal;
//헬스는 생명력 입니다.
@property id health;
//캐릭터에 대해 강화를 시켜주는 일종입니다.
@property id buff;




//힐링은 생명력을 채워주는 스킬입니다.
- (id)healing;
//버핑은 버프를 해주는 스킬이며 여러개의 버프들을 중복이 가능하다. 단 똑같은 버프는 중복이 안됩니다.
- (id)buffing;
//구르기는 종족특성중의 하나로 이동을 좀 더 빠르게 할 수 있도록 해주는 스킬입니다. 대신 대기시간이 깁니다.
- (id)roll;
//맨손타격은 수도사 고유의 스킬로 맨손으로 여러번 타격해서 데미지를 줄 수 있는 스킬입니다.
- (id)bareattack;


@end
