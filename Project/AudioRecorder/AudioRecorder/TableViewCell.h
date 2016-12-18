//
//  TableViewCell.h
//  AudioRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic)  IBOutlet UILabel * pDateLabel;   // 녹음된 날짜
@property (weak, nonatomic)  IBOutlet UILabel * pTimeLabel;   // 녹음을 시작한 시간
@property (weak, nonatomic)  IBOutlet UILabel * pRecodingTimeLabel;   // 녹음 시간


@end
