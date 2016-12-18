//
//  ViewController.m
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "RecondViewController.h"
#import "AudioRecorderInfo.h"
#import "RecondListViewController.h"


@implementation ViewController

@synthesize pRecondViewController;
@synthesize pAudioRecorderInfo;
@synthesize pRecondListViewController;

- (void)viewDidLoad {
    
    //RecordViewController.nib 파일을 로드하여 객체를 생성한다.
    RecondViewController *viewController = [[RecondViewController alloc] initWithNibName:@"RecondViewController" bundle:nil];
    self.pRecondViewController = viewController;
    
    //infoButton 뒤로 RecordViewController.view를 넣는다.
    [self.view insertSubview:viewController.view belowSubview:infoButton];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//status bar를안보이게합니다.
- (BOOL)prefersStatusBarHidden
{
    return YES;
    
}


//녹음된 Info화면으로 이동한다.
-(IBAction)RecordInfoClick
{
    //AudioRecorderInfo.nib 파일을 로드하여 객체를 생성한다.
    if (pAudioRecorderInfo == nil) {
        AudiorecorderInfo *viewController = [[AudiorecorderInfo alloc] initWithNibName:@"AudioRecorderInfo" bundle:nil];
        self.pAudioRecorderInfo = viewController;
        //        [viewController release];
    }
    
    
    UIView *RecordView = pRecondViewController.view;
    UIView *AudioRecorderInfoView = pAudioRecorderInfo.view;
    //화면전환
    [UIView beginAnimations:nil context:NULL];  //애니메이션 정의 시작
    [UIView setAnimationDuration:1];            //애니메이션 시간 설정(초)
    //화면전환 효과 설정
    [UIView setAnimationTransition:([RecordView superview] ? UIViewAnimationTransitionFlipFromRight : UIViewAnimationTransitionFlipFromLeft) forView:self.view cache:YES];
    
    
    if ([RecordView superview] != nil) {
        [RecordView removeFromSuperview];
        [self.view addSubview:AudioRecorderInfoView];
        
    } else {
        [AudioRecorderInfoView removeFromSuperview];
        [self.view insertSubview:RecordView belowSubview:infoButton];
    }
    [UIView commitAnimations];      // 애니메이션 종료
    
}

//Audio List 화면으로 이동한다.
-(IBAction)AudioListClick
{
    //RecordListViewController.nib 파일을 로드하여 객체를 생성한다.
    if (pRecondListViewController == nil) {
        RecondListViewController *viewController = [[RecondListViewController alloc] initWithNibName:@"RecordListViewController" bundle:nil];
        self.pRecondListViewController = viewController;
        //      [viewController release];
    }
    
    
    UIView *RecordView = pRecondViewController.view;
    UIView *RecordListView = pRecondListViewController.view;
    
    //화면전환
    [UIView beginAnimations:nil context:NULL];       //애니메이션 정의 시작
    [UIView setAnimationDuration:1];                 // 애니메이션 시간 설정(초)
    [UIView setAnimationTransition:([RecordView superview] ? UIViewAnimationTransitionCurlUp : UIViewAnimationTransitionCurlDown) forView:self.view cache:YES];
    
    if ([RecordView superview] != nil) {
        [RecordView removeFromSuperview];
        [self.view addSubview:RecordListView];
        [self.pRecondListViewController viewDidAppear:YES];
        [self.pRecondViewController viewDidAppear:NO];
        
    } else {
        [RecordListView removeFromSuperview];
        [self.view insertSubview:RecordView belowSubview:infoButton];
        [self.pRecondListViewController viewDidAppear:NO];
        [self.pRecondViewController viewDidAppear:YES];
    }
    [UIView commitAnimations];   // 애니메이션 정의 종료
    
}


@end
