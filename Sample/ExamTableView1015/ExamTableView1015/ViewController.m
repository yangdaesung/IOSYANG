//
//  ViewController.m
//  ExamTableView1015
//
//  Created by Yang on 2016. 10. 15..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate , UITableViewDataSource>
@property NSArray *black;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.black = @[@{@"index":@"지수 사진",
                     @"member": @[@{@"name":@"지수",@"image":@"지수.jpg"},
                                  @{@"name":@"지수천사",@"image":@"지수1.png"}]},
                     @{@"index":@"제니 사진",
                       @"member":@[@{@"name":@"제니",@"image":@"제니.jpeg"}]},
                   @{@"index":@"단체 사진",
                     @"member": @[@{@"name":@"블랙핑크",@"image":@"블랙핑크1.jpg"},
                                  @{@"name":@"블랙핑크 사랑",@"image":@"블랙핑크2.jpg"},
                                  @{@"name":@"블랙핑크 천사",@"image":@"블랙핑크3.png"},
                                  @{@"name":@"블랙핑크 인형",@"image":@"블랙핑크4.png"},
                                  @{@"name":@"블랙핑크 짱짱",@"image":@"블랙핑크5.png"}]
                     }];

    
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
 
    
}


//헤더설정
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.black.count;
}

//헤더 이름 설정
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return self.black[section][@"index"];
}

//row설정 !
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.black[section][@"member"] count];
}

//셀만들기 !
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //재사용 !
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = self.black[indexPath.section][@"member"][indexPath.row][@"name"];
    cell.imageView.image = [UIImage imageNamed:self.black[indexPath.section][@"member"][indexPath.row][@"image"]];
   
    return cell;
}

//셀높이 설정
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
