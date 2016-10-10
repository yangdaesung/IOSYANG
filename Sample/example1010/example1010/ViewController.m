//
//  ViewController.m
//  example1010
//
//  Created by Yang on 2016. 10. 10..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *itemViews;
@property (nonatomic) NSArray *itemData;
@property (nonatomic, weak) UIView *itemContainerView;

@property (nonatomic) UILabel *disPlayLb;
@property (nonatomic) UIButton *beforBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //데이터 !
    self.itemData = @[@"1번째 버튼",@"2번째 버튼",@"3번째 버튼",@"4번째 버튼"];
    self.itemViews = [[NSMutableArray alloc]init];
    
    [self creatView];
    [self layOut];
    
}

- (void)creatView{

    UIView *itemContainerView = [[UIView alloc] init];
    itemContainerView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:itemContainerView];
    self.itemContainerView = itemContainerView;
    
    
    //버튼 !!!!!
    for (NSInteger i = 0; i < 4; i++) {
        
        UIButton *newBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        newBtn.backgroundColor = [UIColor brownColor];
        
        [newBtn addTarget:self action:@selector(firstButton:) forControlEvents:UIControlEventTouchUpInside];
        [newBtn setTitle:[self.itemData objectAtIndex:i] forState:UIControlStateNormal];
        [newBtn setTitle:@"정진호바보" forState:UIControlStateSelected];
        [newBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [newBtn setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
        [newBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        newBtn.tag = i ;
        newBtn.layer.cornerRadius = 10.f;
        
        [self.itemContainerView addSubview:newBtn];
        [self.itemViews addObject:newBtn];
    }
//출력 라벨 !
        self.disPlayLb = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/3+200, self.view.frame.size.width, self.view.frame.size.height/2-150)];
       self.disPlayLb.text = @"버튼 선택 전 입니다.";
        self.disPlayLb.font = [UIFont systemFontOfSize:30];
        self.disPlayLb.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:self.disPlayLb];
    
    
    //스위치 누르면 배경화면 바뀌는 스위치
    UISwitch *touched =[[UISwitch alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-20, self.view.frame.size.height/2+250, 50, 50)];
    touched.tintColor = [UIColor redColor];
    touched.thumbTintColor = [UIColor blueColor];
    touched.onTintColor = [UIColor greenColor];
    [touched addTarget:self action:@selector(switchTouched:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:touched];
    
}

//버튼 UI 레이아웃!!
- (void)layOut
{
    self.itemContainerView.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height);
    
    const NSInteger itemMargin = 10;
    
    for (UIView *itemLayer in self.itemViews) {
        
        NSInteger row = itemLayer.tag / 2;
        NSInteger cal = itemLayer.tag % 2;
        
        CGFloat itemLayerWidth = (self.itemContainerView.frame.size.width-10)/2;
        CGFloat itemLayerHeight = (self.itemContainerView.frame.size.height/2-10)/2;
        
        itemLayer.frame = CGRectMake((itemLayerWidth+itemMargin)*row, (itemLayerHeight+itemMargin)*cal+20, itemLayerWidth, itemLayerHeight);
        
    }

}

//함수 구현
- (void)firstButton:(UIButton *)sender
{
    
    if (sender.selected) {
        sender.selected = NO;
        self.beforBtn = nil;
        
        self.disPlayLb.text = @"버튼 클릭 전 입니다.";
        
    }else
    {
        
        self.beforBtn.selected = nil;

        
        NSInteger senderTag = sender.tag;
        NSString *strBtn = [self.itemData objectAtIndex:senderTag];
        NSLog(@"%@",strBtn);
        self.disPlayLb.text = strBtn;
        sender.selected = YES;
        self.beforBtn = sender;
        
    }
    
}

- (void)switchTouched:(UISwitch *)touched
{
    if (touched.on) {
        _itemContainerView.backgroundColor = [UIColor whiteColor];
    } else {
        _itemContainerView.backgroundColor = [UIColor grayColor];
    }
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
