//
//  ViewController.m
//  Project
//
//  Created by Yang on 2016. 10. 29..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic)UIScrollView *scroll;
@property (nonatomic)NSArray *Blackpink;


@property(nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property(nonatomic, retain) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController
@synthesize scrollView,pageControl;

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
        self.Blackpink = @[@{@"name":@"블랙핑크",@"image":@"블랙핑크2.png"},
                           @{@"name":@"블랙핑크",@"image":@"블랙핑크3.png"},
                           @{@"name":@"블랙핑크",@"image":@"블랙핑크4.png"},
                           @{@"name":@"블랙핑크",@"image":@"블랙핑크5.png"},
                           @{@"name":@"제니",@"image":@"제니.jpeg"},
                           @{@"name":@"지수",@"image":@"지수.jpg"}];
    
    NSUInteger i = 0;
    //self.Blackpink = i;
    
    
    NSMutableArray *thisImg = [[NSMutableArray alloc] init];
    
    for(NSDictionary *songName in self.Blackpink){
        [thisImg addObject:[songName objectForKey:@"image"]];
        
        i = self.Blackpink.count;
        
        for (NSInteger i = 0 ; i >= thisImg.count; i += 1) {
            
            UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"image"]];
            UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
            imgView.frame = CGRectMake(scrollView.frame.size.width*self.Blackpink.count, 0, scrollView.frame.size.width, scrollView.frame.size.height);
            
            [scrollView addSubview:imgView];
        }
        
        [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width * self.Blackpink.count, scrollView.frame.size.height)];
        
        //ScrollView에 필요한 옵션을 적용한다.
        scrollView.showsVerticalScrollIndicator=NO;
        scrollView.showsHorizontalScrollIndicator=YES;
        scrollView.alwaysBounceVertical=NO;
        scrollView.alwaysBounceHorizontal=NO;
        scrollView.pagingEnabled=YES;          //페이징 가능 여부 YES
        scrollView.delegate=self;
        
        //pageControl에 필요한 옵션을 적용한다.
        pageControl.currentPage =0;               //현재 페이지 index는 0
        pageControl.numberOfPages=self.Blackpink.count;          //페이지 갯수는 3개
        //    [pageControl addTarget:self action:@selector(pageChangeValue:) forControlEvents:UIControlEventValueChanged]; //페이지 컨트롤 값변경시 이벤트 처리 등록
        
        [self.view addSubview:pageControl];
    }
    
//    //페이지 컨트롤 값이 변경될때, 스크롤뷰 위치 설정
//    - (void) pageChangeValue:(id)sender {
//        UIPageControl *pControl = (UIPageControl *) sender;
//        [scrollView setContentOffset:CGPointMake(pControl.currentPage*320, 0) animated:YES];
//    }

}


//스크롤이 변경될때 page의 currentPage 설정
- (void)scrollViewDidScroll:(UIScrollView *)sender {
    CGFloat pageWidth = scrollView.frame.size.width;
    pageControl.currentPage = floor((scrollView.contentOffset.x - pageWidth / 3) / pageWidth) + 1;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidAppear:(BOOL)animated
{
    [scrollView flashScrollIndicators]; // 스크롤바를 보였다가 사라지게 함
}

- (void)viewDidUnload {
    [super viewDidUnload];
    
    self.scrollView = nil;
    self.pageControl = nil;
}
@end
