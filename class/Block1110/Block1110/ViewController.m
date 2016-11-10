//
//  ViewController.m
//  Block1110
//
//  Created by Yang on 2016. 11. 10..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

//
typedef void(^testBlock)(BOOL islock);
//예스 or 노 만의 답을 구할때 쓰면 좋다
typedef void(^SuccessBlock)(BOOL);


@interface ViewController ()

@property (nonatomic , weak)IBOutlet UILabel *testLb;

@property (nonatomic)void (^plusBlock)(NSInteger,NSInteger);
@property (nonatomic) testBlock t1;
@property (nonatomic) NSString *str1;
@property (nonatomic) NSInteger numnum;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    


//ㅇㅖ전 방식 애니메이션!
    
//    [UIView beginAnimations:@"ani" context:nil];
//    
//    [UIView setAnimationDelay:3];
//    [UIView setAnimationDuration:5];
//    
//    [self.testLb setFrame:CGRectMake(100, 400, self.testLb.bounds.size.width, self.testLb.bounds.size.height)]
//    ;
//    [UIView commitAnimations];
    
//----------------------------------------------------------------------------
    
    
    void (^ani)(void) = ^{
        [self.testLb setFrame:CGRectMake(100, 400, self.testLb.bounds.size.width, self.testLb.bounds.size.height)];
    };
    [UIView animateWithDuration:3 animations:ani];
    
    ViewController __weak *wself = self;
    //---------------------------------------------------위아래가 같은 메소드다 !
    [UIView animateWithDuration:3 animations:^{
             [wself.testLb setFrame:CGRectMake(100, 400, self.testLb.bounds.size.width, self.testLb.bounds.size.height)];
    }];
    
    
    [UIView animateWithDuration:3 animations:^{
        
    } completion:^(BOOL finished) {
        if (finished) {
            //어떠한 일을 해라...
        }
    }];
    
    
    

//-------------------------------------------------------------------- 애니메이션 ||
    
    
    //숫자의제곱만들기..
    void (^simpleBlock) (NSInteger) = ^(NSInteger num){
        num *=num;
        NSLog(@"%ld",num);
    };
    
    simpleBlock(10);
    
    //숫자2개를 더해서 출력
    void (^sumBlock) (NSInteger,NSInteger) =^(NSInteger num1 , NSInteger num2){
        NSInteger result = num1 + num2;
        NSLog(@"%ld",result);
    };
    NSInteger num1 = 5;
    NSInteger num2 = 10;
    sumBlock(num1,num2);
    
    //property 적용해서 출력..
    self.plusBlock =^(NSInteger num1 , NSInteger num2){
        
        NSLog(@"%ld", num1+num2);
    };
    self.plusBlock(5,30);
    
    //그대로 프린트하기
    void (^black)(void) =^{
        NSLog(@"this is block");
    };
    black();
    
    //곱하기..
    void (^addBlock)(NSInteger,NSInteger) =^(NSInteger num1,NSInteger num2){
        NSLog(@"%ld",num1 * num2);
    };
    addBlock(3,5);
    
    //typedf로  이용한 줄이기 !
    self.t1 = ^(BOOL isLock){
        NSLog(@"%d",isLock);
    };
    
    
    
    [self testMethod];
    
    self.numnum = 0;
    [self testMethods];
    
    
}

//Capture Value  - __block
- (void)testMethod {
    //__block를 달게 되면 변경된 값이 계속 불려오게 된다 ...
    __block NSInteger anInteger = 42;
    
    void (^testBlock)(void) = ^{
        anInteger = 84;
        //현재 NSLog에 찍히는건 위에있는 객체만 인식하게 된다.....
        NSLog(@"Integer is : %ld",anInteger);
    };
    //22를 바뀌어도 block 객체 안에 바뀐 84만 계속 나오게 된다
    anInteger = 22;
    
    testBlock();
    
    NSLog(@"OutInteger is : %ld",anInteger);
    
}

//Capture Value  - __Weak
- (void)testMethods {
    //NSInteger anInteger = 42;
    
    //__weak 이해가 안됨...
    ViewController * __weak wself = self;
    
    void (^testBlock)(void) = ^{
        wself.numnum = 10;
        NSLog(@"this is Integer is : %ld",wself.numnum);
    };
    self.numnum = 22;
    NSLog(@"this is OutInteger is : %ld",self.numnum);
    testBlock();

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
