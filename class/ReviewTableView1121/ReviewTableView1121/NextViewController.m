//
//  NextViewController.m
//  ReviewTableView1121
//
//  Created by Yang on 2016. 11. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@property NSDateFormatter *dateInfo;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //타이틀 시간 제목..
    NSDate *date = [NSDate date];
    self.dateInfo = [[NSDateFormatter alloc] init];
    [self.dateInfo setDateFormat:@"YYYY/MM/dd HH:mm:ss"];
    
    [self.navigationItem setTitle:[self.dateInfo stringFromDate:date]];
    
    
    
//      [self.navigationController popViewControllerAnimated:YES];
    
    //경도와 위도 !
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(40.5, 30.2);
    //반경 .. 지도 확대 / 축소를 변경
    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
    //위치를 조정
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.map setRegion:region];
    //자기 현재 위치 보여주는 것
    [self.map setShowsUserLocation:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
