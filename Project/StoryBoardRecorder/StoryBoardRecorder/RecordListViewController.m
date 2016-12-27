//
//  RecordListViewController.m
//  StoryBoardRecorder
//
//  Created by Yang on 2016. 12. 18..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "RecordListViewController.h"
#import "UIMemoListCell.h"

@interface RecordListViewController ()

@end

@implementation RecordListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 테이블 뷰 델리게이트

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [pDataBase.memoListArray count];
    
    
}

- (UIMemoListCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIMemoListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IndexCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UIMemoListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"IndexCell"];
        
    }

    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    NSString *pSeq = [[pDataBase.memoListArray objectAtIndex:indexPath.row] objectForKey:@"SEQ"];
    int pRecodingTime = [(NSNumber *)[[pDataBase.memoListArray objectAtIndex:indexPath.row] objectForKey:@"RecordingTM"] intValue];
    
    //[[cell pCelTitle] setText:[[pDataBase.memoListArray objectAtIndex:indexPath.row] objectForKey:@"SEQ"]];
    cell.pDateLabel.text = [NSString stringWithFormat:@"%@-%@-%@",[pSeq substringWithRange:NSMakeRange(0, 4)],
                            [pSeq substringWithRange:NSMakeRange(4, 2)],
                            [pSeq substringWithRange:NSMakeRange(6, 2)]];
    cell.pTimeLabel.text = [NSString stringWithFormat:@"%@시 %@분 %@초 녹음",[pSeq substringWithRange:NSMakeRange(8, 2)],
                            [pSeq substringWithRange:NSMakeRange(10, 2)],
                            [pSeq substringWithRange:NSMakeRange(12, 2)]];
    
    cell.pRecodingTimeLabel.text = [NSString stringWithFormat:@"%02d:%02d:%02d",(pRecodingTime / 3600),
                                    (pRecodingTime % 3600) / 60, pRecodingTime % 60];
    
    return cell;
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


@end
