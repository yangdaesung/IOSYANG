//
//  RecordDataBase.h
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface RecordDataBase : NSObject

// 녹음파일 정보 검색
- (void) getRecordList;
- (void) pDataBaseConnection:(sqlite3 **)tempDataBase;        // 데이터베이스 연결

- (void) insertRecordData:(NSString *)pSEQ RecordingTM:(NSInteger)pRecordingTM  RecordFileNM:(NSString *)pRecordFileNM;
- (void) deleteRecordData:(NSString *)pSEQ;

@property (strong, nonatomic) NSMutableArray  *memoListArray;


@end
