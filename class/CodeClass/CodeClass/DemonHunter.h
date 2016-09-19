//
//  demonHunter.h
//  CodeClass
//
//  Created by Yang on 2016. 9. 19..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


/*악마사냥꾼이란 악마들을 사냥하는 집단으로 일리단의 의해 만들어진 군인들입니다.
/다른 종족은 불가능하고 오로지 엘프종족 (나이트엘프 , 블러드엘프)만이 악마사냥꾼이 가능합니다.*/
@interface demonHunter : NSObject

//이들은 악마들을 죽이기 위해 태어난 사람들입니다.
@property id devil;
//생명의 구슬은 악마들이나 다른 몬스터등을 죽이거나 타격할때 나오는 구술로 일정부분 체력회복이 가능합니다.
@property id beadsoflife;
//이들은 악마의 힘에 의해 눈을 잃는 대신 모든 감각이 엄청 좋아하지는 것입니다.
@property id Blind;
//군단은 악마사냥꾼이 모인 집단입니다.
@property id legion;


//악마사냥꾼이 변하는 것으로 일정시간 악마들의 힘을 빌려 악마로 변신이 가능합니다.
- (id)DevilsTransformation;
//악마사냥꾼의 고유의 특성으로 점프를 2번 가능합니다.
- (id)multijump;
//안광이라는 이름으로 악마들의 힘이 온몸에 있는데 이 힘을 집중해서 눈으로 쏘는 것입니다.
- (id)devillaser;
//악마사냥꾼의 고유의 탈것으로 지옥표범이라 하여 지옥에서 사는 표범을 테이밍해서 타는것입니다.
- (id)Felsaber;


@end
