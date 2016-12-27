//
//  RecordListViewController.h
//  StoryBoardRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreAudio/CoreAudioTypes.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <MessageUI/MessageUI.h>
#import "UIMemoListCell.h"
#import "RecordDataBase.h"

@interface RecordListViewController : UIViewController <UITableViewDelegate,UITableViewDataSource
, AVAudioPlayerDelegate,MFMailComposeViewControllerDelegate>
{
    
    RecordDataBase *pDataBase;
    IBOutlet UITableView *pListView;
    IBOutlet UIBarButtonItem *PlayerButton;
    
    AVAudioPlayer   *pAudioPlayer;
    
}


@end
