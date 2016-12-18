//
//  RecondViewController.m
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "RecondViewController.h"

@interface RecondViewController ()

@end

@implementation RecondViewController

- (void)viewDidLoad {
    
    //뷰디드로드하기전에 화면 초기화를 먼저한다 ..
    [self SetAudioSession];
    [recordTimeDisplay setFont:[UIFont fontWithName:@"DBLCDTempBlack" size:48.0]];
    pDataBase = [[RecordDataBase alloc] init];
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)SetAudioSession
{
    self.pAudioSession = [AVAudioSession sharedInstance];
    
    //오디오 카테고리 설정
    
    if (![self.pAudioSession setCategory:AVAudioSessionCategoryRecord error:nil])
        return NO;
    if (![self.pAudioSession setActive:YES error:nil])
        return NO;
    
    return self.pAudioSession.inputAvailable;

}
//녹음 시작 /멈춤
- (IBAction)AudioRecordingClick
{
    if (self.pAudioRecorder != nil)
    {
        if (self.pAudioRecorder.recording) {
            [self.pAudioRecorder stop];
            pGaugeView.value = 0;
            
            //오디오 레벨을 표시하는 계기판을 다시 그린다.
            [pGaugeView setNeedsDisplay];
            return;
        }
        [[NSFileManager defaultManager] removeItemAtPath:[self.pAudioRecorder.url path] error:nil];
        
    }
    if ([self AudioRecordingStart])
    {
        [self ToolbarRecordButtonToogle:1];
        timer = [NSTimer scheduledTimerWithTimeInterval:0.03f target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    }
}
//녹음시작
- (BOOL)AudioRecordingStart
{
    //녹음을 위한 설정
    NSMutableDictionary *AudioSetting = [NSMutableDictionary dictionary];
    [AudioSetting setValue:[NSNumber numberWithInt:kAudioFormatLinearPCM] forKey:AVFormatIDKey];
    [AudioSetting setValue:[NSNumber numberWithFloat:11025] forKey:AVSampleRateKey];
    [AudioSetting setValue:[NSNumber numberWithInt:1] forKey:AVNumberOfChannelsKey];
    [AudioSetting setValue:[NSNumber numberWithInt:16] forKey:AVLinearPCMBitDepthKey];
    [AudioSetting setValue:[NSNumber numberWithBool:NO] forKey:AVLinearPCMIsBigEndianKey];
    [AudioSetting setValue:[NSNumber numberWithBool:NO] forKey:AVLinearPCMIsFloatKey];
    
    //녹음된 오디오가 저장된 파일의 주소
    NSURL *url = [self getAudioFilePath];
    //avAudioRecorder 객체생성
    self.pAudioRecorder = [[AVAudioRecorder alloc] initWithURL:url settings:AudioSetting error:nil];
    if (!self.pAudioRecorder) return NO;
    //모니터링 여부 결정
    self.pAudioRecorder.meteringEnabled = YES;
    self.pAudioRecorder.delegate = self;
    
    if (![self.pAudioRecorder prepareToRecord]) return NO;
    if (![self.pAudioRecorder record]) return NO;
    
    return YES;
}

- (void) timerFired
{
    //현재 측정 레벨 재측정
    [self.pAudioRecorder updateMeters];
    double peak = pow(10, (0.05*[self.pAudioRecorder peakPowerForChannel:0]));
    plowPassResults = 0.05 * peak + (1.0 - 0.05)*plowPassResults;
    
    recordTimeDisplay.text = [NSString stringWithFormat:@"%@", [self RecordTime:self.pAudioRecorder.currentTime]];
    pRecordingTime = self.pAudioRecorder.currentTime;
    [pGaugeView setNeedsDisplay];

}

//녹음된 시/분/초를 구합니다.
- (NSString *) RecordTime: (int) num
{
    int secs = num % 60;   // 녹음시간 : 초
    int min = (num % 3600) / 60;   // 녹음시간 : 분
    int hour =(num / 3600);        //녹음시간 : 시
    
    return [NSString stringWithFormat:@"%02d:%02d:%02d", hour, min, secs];
}

- (NSURL *)getAudioFilePath
{
    //Documents 디렉토리 경로의 위치
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    
    // 파일명을 구하고 파일 경로를 합친 후 NSURL 객체로 변환
    NSURL *AudioUrl = [NSURL fileURLWithPath:[documentDirectory stringByAppendingPathComponent:[self getFileName]]];
    
    return AudioUrl;
    
}

- (NSString *)getFileName
{
    NSDateFormatter *FileNameFormat = [[NSDateFormatter alloc] init];
    [FileNameFormat setDateFormat:@"yyyyMMddHHmmss"];
    
    //파일명 구함
    NSString *fileNameStr = [[FileNameFormat stringFromDate:[NSDate date]] stringByAppendingString:@".aif"];
    
    return fileNameStr;
}


- (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag
{
    
    //데이터베이스에 저장
    pRecordSeq = [[recorder.url.path substringFromIndex:[recorder.url.path length] - 18] substringToIndex:14];
    pRecordFileName = recorder.url.path;
    [pDataBase insertRecordData:pRecordSeq RecordingTM:pRecordingTime RecordFileNM:pRecordFileName];
    
    
    [self ToolbarRecordButtonToogle:0];
    [timer invalidate];
    timer = nil;
}


//녹음/몸춤 버튼 이미지 토클 처리
- (void) ToolbarRecordButtonToogle:(int)index
{
    if(index == 0)
        [pRecordButton setImage:[UIImage imageNamed:@"record_on.png"] forState:UIControlStateNormal];
    else
        [pRecordButton setImage:[UIImage imageNamed:@"record_off.png"] forState:UIControlStateNormal];
    
}





@end
