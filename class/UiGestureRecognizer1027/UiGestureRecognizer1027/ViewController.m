//
//  ViewController.m
//  UiGestureRecognizer1027
//
//  Created by Yang on 2016. 10. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *typingCount;
@property (weak, nonatomic) IBOutlet UILabel *coordinate;
@property NSInteger count;

@end

@implementation ViewController

//- (instancetype)init
//{
//    if (self.typingCount) {
//     
//        
//        
//    }
//    
//    
//    
//    
//}

- (IBAction)gestureAction:(id)sender {
    
    static NSInteger tapCount = 0;
    //좌표
    CGPoint coordinate = [sender locationInView:self.view];
    
    NSString *location = [NSString stringWithFormat:@"(%.1lf,%.1lf)",coordinate.x,coordinate.y];
    //로그 좌표 찍히기
    NSLog(@"%@",NSStringFromCGPoint(coordinate));
    
    [self.coordinate setText:location];
    [self.typingCount setText:[NSString stringWithFormat:@"%ld",++tapCount]];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
