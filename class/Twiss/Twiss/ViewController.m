//
//  ViewController.m
//  Twiss
//
//  Created by Yang on 2016. 9. 30..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic)NSArray *itemData;
@property (nonatomic)NSArray *costData;

@property (nonatomic, weak)UIView *mainView;

@property (nonatomic)NSMutableArray *itemVlaue;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.itemData = @[@{@"title":@"징징이",@"cost":@"2000",@"image":@"징징이.png"},
                      @{@"title":@"다람이",@"cost":@"3000",@"image":@"다람이.png"},
                      @{@"title":@"스펀지밥",@"cost":@"5000",@"image":@"스펀지밥.png"},
                      @{@"title":@"꽃게사장",@"cost":@"1000",@"image":@"꽃게사장.png"}];
    self.costData = @[@"10000",@"5000",@"1000"];
    
                      
    
    
    
    //뷰
//    //UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height/2-300, self.view.frame.size.width-40, 400)];
//    mainView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:mainView];
//    
//    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0,mainView.frame.size.width/2-7.5, mainView.frame.size.height/2-5)];
//    view1.backgroundColor = [UIColor whiteColor];
//    [mainView addSubview:view1];
//    
//    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/2+5, mainView.frame.size.height/2-200, mainView.frame.size.width/2-5,mainView.frame.size.height/2-5)];
//    view2.backgroundColor = [UIColor whiteColor];
//    [mainView addSubview:view2];
//    
//    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/2+5, mainView.frame.size.height/2, mainView.frame.size.width/2-5, mainView.frame.size.height/2)];
//    view3.backgroundColor = [UIColor whiteColor];
//    [mainView addSubview:view3];
//    
//    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(0, mainView.frame.size.height/2, mainView.frame.size.height/2-40, mainView.frame.size.width/2+32.5)];
//    view4.backgroundColor = [UIColor whiteColor];
//    [mainView addSubview:view4];
   
    
    //메인뷰
    UIView *mainView = [[UIView alloc ] init];
    mainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:mainView];
    self.mainView = mainView;
    
    //itemView
    for (NSInteger i = 0; i > 4; i++) {
        <#statements#>
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height/2+110, self.view.frame.size.width-40, 100)];
    subView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:subView];
    
    UIView *subview1 = [[UIView alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height/2+230, self.view.frame.size.width-40, 50)];
    subview1.backgroundColor = [UIColor redColor];
    [self.view addSubview:subview1];
    
    //이미지
    UIImageView *img1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,mainView.frame.size.width/2-7.5, mainView.frame.size.height/2-5)];
    [img1 setImage:[UIImage imageNamed:@"징징이.png"]];
    [img1 setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:img1];
    
    UIImageView *img2 = [[UIImageView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/2+5, mainView.frame.size.height/2-200, mainView.frame.size.width/2-5,mainView.frame.size.height/2-5)];
    [img2 setImage:[UIImage imageNamed:@"다람이.png"]];
    [img2 setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:img2];
    
    UIImageView *img3 =[[UIImageView alloc] initWithFrame:CGRectMake(mainView.frame.size.width/2+5, mainView.frame.size.height/2, mainView.frame.size.width/2-5, mainView.frame.size.height/2)];
    [img3 setImage:[UIImage imageNamed:@"스펀지밥.png"]];
    [img3 setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:img3];
    
    UIImageView *img4 = [[UIImageView alloc] initWithFrame:CGRectMake(0, mainView.frame.size.height/2, mainView.frame.size.height/2-40, mainView.frame.size.width/2+32.5)];
    [img4 setImage:[UIImage imageNamed:@"꽃게사장.png"]];
    [img4 setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:img4];
    
    //텍스트
    UILabel *lavel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.frame.size.width,img1.frame.size.width, 30)];
    lavel1.text = @"sum : 4000";
    lavel1.textColor = [UIColor grayColor];
    lavel1.textAlignment = NSTextAlignmentCenter;
    [img1 addSubview:lavel1];
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
