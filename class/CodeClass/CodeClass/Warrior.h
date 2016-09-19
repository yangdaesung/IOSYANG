//
//  warrior.h
//  CodeClass
//
//  Created by Yang on 2016. 9. 19..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


//전사는 가장 기본이 되는 직업 중 하나로 칼이나 방패등을 들고 공격을 하거나 누군가의 방패가 되어주는 직업입니다.
@interface warrior : NSObject

//누군가의 방패가 되어주어서 자신이 데미지를 다 받아주는동안 남은 딜러들이 딜을 해주기 때문에 꼭 필요한 존재입니다.
@property id Tanker;
//전사는 분노를 통해 스킬사용이 가능합니다. 때리거나 막으면 분노게이지가 차서 스킬사용이 가능합니다.
@property id rage;
//방패를 드는 얼마 안도는 직업중하나로 방패를 듬으로서 방어력이 증가 되어 보다 더오래 버틸 수가 있습니다.
@property id shield;
//근접딜러로 원거리딜러와 달리 몬스터에 붙어서 타격을 합니다.
@property id almost;


//함성은 어그로를 끄는 스킬중에 하나로 함성을 질러 몬스터들이 나에게 오겠금 유도하는 스킬입니다.
- (id)cry;
//돌진은 멀리서 몬스터에게 가볍게 가까이 가게 할수 있는 기술로 스턴도 들어갑니다.
- (id)charge;
//어그로는 몬스터를 좀더 화나게 만들어 자신을 때리겠금 만드는 용어 중 하나로 어그로를 잘끌어야 체력이약한 딜러들을 보호 할수 있습니다.
- (id)aggro;
//방패로 공격하는 스킬로 강력하게 방패를 내리쳐서 기절시키는 기술입니다.
- (id)shieldattack;

@end
