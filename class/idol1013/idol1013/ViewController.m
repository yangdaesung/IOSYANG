//
//  ViewController.m
//  self.animals1013
//
//  Created by Yang on 2016. 10. 13..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>


@property NSArray *idol;
@property NSArray *animals;
@property UITableView *NewIdol;
@property UIBarButtonItem *button;
@property BOOL isEditng;
@property NSArray *checkOnList;

@end

@implementation ViewController

- (void)viewDidLoad {
    //에디터 버튼 만들기 !!
 
    
    
    self.idol = @[@{@"name":@"menidol",@"group":@[@"인피니티",@"방탄소년단",@"블락비"]},
                  @{@"name":@"girlIdol",@"group":@[@"블랙핑크",@"여자친구",@"레드벨벳"]}];
    self.animals = @[@{@"index":@"B",
                     @"item":@[
                             @{@"name":@"bear",@"image":@"bear.jpg"},
                             @{@"name":@"black_swan",@"image":@"black_swan.jpg"},
                             @{@"name":@"buffalo",@"image":@"buffalo.jpg"}]},
                       @{@"index":@"C",
                      @"item":@[
                            @{@"name":@"camel",@"image":@"camel.jpg"},
                            @{@"name":@"cockatoo",@"image":@"cockatoo.jpg"}]},
                       @{@"index":@"D",
                     @"item":@[
                            @{@"name":@"dog",@"image":@"dog.jpg"},
                            @{@"name":@"donkey",@"image":@"donkey.jpg"}]},
                       @{@"index":@"E",
                     @"item":@[
                            @{@"name":@"elephant",@"image":@"elephant.jpg"},
                            @{@"name":@"emu",@"image":@"emu.jpg"}]}
                     ];


    self.NewIdol = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.NewIdol.dataSource = self;
    self.NewIdol.delegate = self;
    [self.view addSubview:self.NewIdol];
    
       self.button = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(onClickEditButton:)];
    
    

    //에디터 버튼 넣어주는것
    //self.checkOnList = [[NSArray alloc] initWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0, nil];
    
}

//row 설정
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   
    return [self.animals[section][@"item"] count];
    
}
//header 생성
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return self.animals.count;
    
}

//tableView의 하나의 셀을 생성 (0,0) -> (3,1) 까지 진행됨.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = self.animals[indexPath.section][@"item"][indexPath.row][@"name"];
    cell.imageView.image = [UIImage imageNamed:self.animals[indexPath.section][@"item"][indexPath.row][@"image"]];
    
    return cell;
}

//셀 하나의 높이 설정
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


// 헤더의 이름을 설정
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return self.animals[section][@"index"];
}

//선택을 해도 선택되지 않고 하일라이트 상태에서만 가능함.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"와우!"
                                                                   message:@"확인"
                                                                preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:okBtn];
    [self presentViewController:alert animated:YES completion:nil];
    
    
}


// -------------------------------------------------------------------------------------------edit start
-(void)onClickEditButton:(UIBarButtonItem *)sender
{//테이블뷰를 에디터 모드
    if (!self.isEditng) {
        [self.NewIdol setEditing:YES animated:YES];
        self.isEditng = YES;
    }else
    {
        [self.NewIdol setEditing:NO animated:YES];
        self.isEditng = NO;
    }
    //
}
//에디터버튼을 누르면 yes!
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
//딜리트 모드로 바뀐다 (옆에 -가 생긴다)
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return UITableViewCellEditingStyleDelete;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //데이터지우기
    //셀을 지우기
    
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    
}

//-----------------------------------------------------------------------------------------------edit endding



    - (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
