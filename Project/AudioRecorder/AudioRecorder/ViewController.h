//
//  ViewController.h
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RecondViewController;
@class AudiorecorderInfo;
@class RecondListViewController;

@interface ViewController : UIViewController
{
    IBOutlet UIButton *infoButton;
}

//info정보 버튼 클릭
- (IBAction)RecordInfoClick;

//List버튼 클릭
- (IBAction)AudioListClick;

@property (strong,nonatomic) RecondViewController *pRecondViewController;
@property(strong,nonatomic) AudiorecorderInfo *pAudioRecorderInfo;
@property(strong,nonatomic)RecondListViewController *pRecondListViewController;



@end

