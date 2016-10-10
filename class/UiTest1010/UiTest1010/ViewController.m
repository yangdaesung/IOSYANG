//
//  ViewController.m
//  UiTest1010
//
//  Created by Yang on 2016. 10. 10..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic)UILabel *disPlayLb;
@property (nonatomic)UIButton *beforBtn;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
  
    //버튼 첫 사용 !
    
    /* UIButton *okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    okBtn.frame = CGRectMake(30, 50, 100, 35);
    [okBtn setTitle:@"ok" forState:UIControlStateNormal];
    [okBtn setTitle:@"touchDown" forState:UIControlStateHighlighted];
    [okBtn setTitle:@"selected" forState:UIControlStateSelected];
    [okBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [okBtn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    okBtn.titleLabel.font = [UIFont systemFontOfSize:30];
    okBtn.tag = 10;
    
    [okBtn addTarget:self action:@selector(touchUpInsideOKBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:okBtn];
    
    
    //UIImage *btnImage = [UIImage imageNamed:@"homeBig.png"];
    
    UIButton *cancel = [UIButton buttonWithType:UIButtonTypeCustom];
    cancel.frame = CGRectMake(20, 30,50,30);
    [cancel setTitle:@"OK" forState:UIControlStateNormal];
    [cancel setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    //[cancel setBackgroundImage:btnImage forState:UIControlStateNormal];
    cancel.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:cancel];*/
    
   
    
    
    //버튼 4개 만들기
    
    
    //1번째 버튼
    UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn1.frame = CGRectMake(self.view.frame.size.width/3-80,self.view.frame.size.height/5+150, self.view.frame.size.width/4,30);
    [Btn1 setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [Btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    Btn1.backgroundColor = [UIColor blackColor];
    Btn1.layer.cornerRadius = 10.f;
    Btn1.titleLabel.font = [UIFont systemFontOfSize:20];
    Btn1.tag = 10;
    
    [Btn1 addTarget:self action:@selector(firstButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:Btn1];
    //2번째 버튼
    UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn2.frame = CGRectMake(self.view.frame.size.width/4+120, self.view.frame.size.height/5+150, self.view.frame.size.width/4, 30);
    [Btn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [Btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    Btn2.backgroundColor = [UIColor blackColor];
    Btn2.layer.cornerRadius = 10.f;
    Btn2.titleLabel.font = [UIFont systemFontOfSize:20];
    Btn2.tag = 10;

    [self.view addSubview:Btn2];
    ///3번째 버튼
    UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn3.frame = CGRectMake(self.view.frame.size.width/3-80,self.view.frame.size.height/5+200, self.view.frame.size.width/4,30);
    [Btn3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [Btn3 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    Btn3.backgroundColor = [UIColor blackColor];
    Btn3.layer.cornerRadius = 10.f;
    Btn3.titleLabel.font = [UIFont systemFontOfSize:20];
    Btn3.tag = 10;
    
    [self.view addSubview:Btn3];
    //4번째버튼
    UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn4.frame = CGRectMake(self.view.frame.size.width/4+120, self.view.frame.size.height/5+200, self.view.frame.size.width/4, 30);
    [Btn4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [Btn4 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    Btn4.backgroundColor = [UIColor blackColor];
    Btn4.layer.cornerRadius = 10.f;
    Btn4.titleLabel.font = [UIFont systemFontOfSize:20];
    Btn4.tag = 10;
    
    [self.view addSubview:Btn4];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(20, 20, 150, 20)];
    slider.value = 150;
    slider.minimumTrackTintColor = [UIColor redColor];
    slider.maximumTrackTintColor = [UIColor blueColor];
    CGFloat num = slider.value;
    UILabel *numTotal = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 40, 20)];
    
    
    
    [self.view addSubview:slider];
    [self.view addSubview:numTotal];
    
    CGRect tectView = CGRectMake(self.view.frame.size.width/3-80, self.view.frame.size.height/5+250, self.view.frame.size.width/3+150, 50);
    UITextView  *textView = [[UITextView alloc] initWithFrame:tectView];
    textView.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:textView];
    
    
}

     - (void)firstButton:(UIButton *)sender
     {
         
         if (sender.selected) {
             sender.selected = NO;
             self.beforBtn = nil;
             
             self.disPlayLb.text = @"버튼 클릭 전 입니다.";
             
         }else
         {
             
             self.beforBtn.selected = NO;
             NSString *text = sender.titleLabel.text;
             self.disPlayLb.text = text;
             sender.selected = YES;
             self.beforBtn = sender;
             
         }
     }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
