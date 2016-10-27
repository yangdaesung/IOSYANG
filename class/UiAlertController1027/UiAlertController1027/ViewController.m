//
//  ViewController.m
//  UiAlertController1027
//
//  Created by Yang on 2016. 10. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *aBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 40, 40)];
    aBtn.backgroundColor = [UIColor yellowColor];

    [aBtn addTarget:self action:@selector(onAlert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aBtn];
    
    
}

- (void)onAlert:(UIButton *)sender
{
 
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"하이" message:@"와우" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okbtn = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *btn = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okbtn];
    [alert addAction:cancel];
    [alert addAction:btn];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)clickAlertButton:(id)sender {
    [self showAlertController:UIAlertControllerStyleAlert];
    
}

- (IBAction)clickActionSheetButton:(id)sender {
      [self showAlertController:UIAlertControllerStyleActionSheet];
}

- (void)showAlertController:(UIAlertControllerStyle)style
{
//    UIAlertController *alertController =[UIAlertController alertControllerWithTitle:@"alert" message:@"alert 스타일" preferredStyle:style];
    //스위치 쓴 이유
    //열거형 같은 경우 실질적으로 데이터타입이라는 것은 정수다

    //if문 !
    if (style == UIAlertControllerStyleAlert ||
        style == UIAlertControllerStyleActionSheet) {
        
        NSLog(@"제대로 된 스타일이 입력되었습니다.");
    }else {
        NSLog(@"스타일이 잘못 입력되었습니다.");
        return;
    }
    
    //스위치문 !
    
//    switch (style) {
//        case UIAlertControllerStyleAlert:
//         case UIAlertControllerStyleActionSheet:
//            NSLog(@"확인합니다 !");
//            break;
//            
//        default:
//            NSLog(@"!!!!!!!!!!!!");
//            return;
//            break;
//    }
//    
    
    //^block 나중에 사용자가 이액션을 선택했을때 이메소드를 실행될 코드의 묶음이다.
    //그래서 block은 함수형태이다.
    
    void (^handlerBlock)(UIAlertAction *)  = ^(UIAlertAction * _Nonnull action)
    {
        NSLog(@"핸들러가 호출되었습니다.");
//        if (action == UIAlertActionStyleCancel) {
//            NSLog(@"취소가 호출되었습니다.");
//        } else if (action == UIAlertActionStyleDestructive){
//            NSLog(@"default가 호출되었습니다.");
//        }else{
//            NSLog(@"실행되지않았습니다.");
//        }
//
        switch ([action style]) {
            case UIAlertActionStyleDestructive:
                NSLog(@"파괴");
                break;
            case UIAlertActionStyleCancel:
                NSLog(@"취소");
                break;
            case UIAlertActionStyleDefault:
                NSLog(@"확인");
            default:
                break;
        }
        
        
    };
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"alret" message:@"aaa" preferredStyle:style];

    //확인버튼
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:handlerBlock ];
    
    [alertController addAction:okAction];
    
    //취소버튼
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:handlerBlock ];
     [alertController addAction:cancelAction];
    
    //제거버튼
    UIAlertAction *desisAction = [UIAlertAction actionWithTitle:@"제거" style:UIAlertActionStyleDestructive handler:handlerBlock];
    
    
    [alertController addAction:desisAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
