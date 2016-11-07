//
//  ViewController.m
//  ValueObserving1107
//
//  Created by Yang on 2016. 11. 7..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSInteger count;

@property (weak, nonatomic) IBOutlet UILabel *clickView;

@property NSString *lastName;
@property NSString *firstName;
@property (readonly)NSString *fullname;

@property (weak, nonatomic) IBOutlet UITextField *firstNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *lastNameLabel;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self addObserver:self
           forKeyPath:@"count"
              options:NSKeyValueObservingOptionInitial |
     //변경되기 직전에 호출
              NSKeyValueObservingOptionPrior |
     //변경되고 나서의 값
              NSKeyValueObservingOptionNew |
     //변경되기전의 값
              NSKeyValueObservingOptionOld
              context:nil];
    
 
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    
    NSLog(@"keyPath : %@\ninfoDic : %@",keyPath,change);
    

}

//버튼 누를때마다 라벨에 +1씩 올라간다...
- (IBAction)clickBtn:(id)sender {
    self.count ++;
    
    self.clickView.text = [NSString stringWithFormat:@"%ld",self.count];
    
}

//- (void)setCount:(NSInteger)count
//{
//    _count = count;
//    self.clickView.text = [NSString stringWithFormat:@"%ld",self.count];
//}

//글자 합쳐진다..
- (IBAction)nameBtn:(id)sender {
    
    self.lastName = self.lastNameLabel.text;
    self.firstName = self.firstNameLabel.text;
    
    NSLog(@"%@",self.fullname);
    
}
//세터,게터를 통해 바뀌는것......이해불가..
//- (void)setFirstName:(NSString *)firstName
//{
//    _firstName = firstName;
//    self.fullname = [_lastName stringByAppendingString:_firstName];
//}
//- (void)setLastName:(NSString *)lastName
//{
//    _lastName = lastName;
//    self.fullname = [NSString stringWithFormat:@"%@%@",_firstName,_lastName];//[_lastName stringByAppendingString:_firstName];
//}
//

//readonly 할경우 이 메소드를 쓴다
- (NSString *)fullname
{
    return [NSString stringWithFormat:@"%@%@",_firstName,_lastName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
