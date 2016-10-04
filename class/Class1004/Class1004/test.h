//
//  test.h
//  Class1004
//
//  Created by Yang on 2016. 10. 4..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface test : NSObject






+(void)getMutiplicationTable:(NSInteger)num;
+(void)getMutiplicationTabe:(NSInteger)num;
+(void)factorial:(NSInteger)num;




-(NSString *)allbumTitle:(NSDictionary *)data;
//song의 제목들
-(NSArray *)songTitles:(NSDictionary *)data;
//송 데이터리스트
-(NSArray *)songDatas:(NSDictionary *)data;
//제목입력시 가사
-(NSString *)lyricWithData:(NSDictionary *)title;
//제목 입력시 재생 시간
-(NSData *)playTimeWithData:(NSDictionary *)title;






@end
