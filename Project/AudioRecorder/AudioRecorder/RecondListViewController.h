//
//  RecondListViewController.h
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreAudio/CoreAudioTypes.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <MessageUI/MessageUI.h>
#import "RecordDataBase.h"
#import "TableViewCell.h"

@interface RecondListViewController : UIViewController <AVAudioPlayerDelegate, MFMailComposeViewControllerDelegate>
{
    RecordDataBase *pDataBase;
    IBOutlet UITableView *pListView;
    IBOutlet UIBarButtonItem *PlayerButton;
    
    AVAudioPlayer   *pAudioPlayer;
}

-(void) ReloadRecordList;


@property (strong, nonatomic) AVAudioPlayer  *pAudioPlayer;

@end
