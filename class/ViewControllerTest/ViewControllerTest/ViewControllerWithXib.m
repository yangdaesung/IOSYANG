//
//  ViewControllerWithXib.m
//  ViewControllerTest
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewControllerWithXib.h"
#import "Viewcontroller2.h"

@interface ViewControllerWithXib ()
@property(nonatomic,assign) UIModalTransitionStyle modalStyle;

@end

@implementation ViewControllerWithXib


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad xib");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onTouchupInsideBtn:(id)sender
{
    //present
//    //객체만들기
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    Viewcontroller2 *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"Viewcontroller2"];
//    
//    //애니메이션
//    
//    //롤링
    //[vc2 setModalTransitionStyle:UIModalTransitionStylePartialCurl];
//    //사라진다.
//    //[vc2 setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
//    //뒤집어진다.
//    //[vc2 setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
//    //present
   //[self presentViewController:vc2 animated:YES completion:nil];
    
  
    //navi push
    [self.navigationController pushViewController:vc2 animated:YES];
    
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
