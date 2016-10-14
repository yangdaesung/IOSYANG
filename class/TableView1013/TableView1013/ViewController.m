//
//  ViewController.m
//  TableView1013
//
//  Created by Yang on 2016. 10. 13..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property NSArray *carName;
@property NSArray *idol;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.carName = @[@{@"title":@"CarName",
                       @"List":@[@"티코",@"람보",@"미니쿠퍼",@"맥라렌",@"레토나",@"포니",@"부가티",@"벨로스터",@"시발차",@"두돈반"]},
                     @{@"title":@"IdolName",
                       @"List":@[@"블랙핑크",@"에이핑크",@"마마무",@"레드벨벳",@"소녀시대"]}
                     ];
                       
                       
//    self.idol = @[@"블랙핑크",@"에이핑크",@"마마무",@"레드벨벳",@"소녀시대"];
    
    
    
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if (section == 0) {
//        return self.carName.count;
//    }else {
//        return self.idol.count;
//    }
    
    NSDictionary *list = self.carName[section];
    
    NSArray *listCount = [list objectForKey:@"List"];
    
    return listCount.count;
}

//표현할 데이터의 총세션의 갯수
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return self.carName.count;
}

//표현할 데이터에서 하나의 세션에 있는 로우의 갯수
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    //    //모든 cell을 부르는것이 아니라 페이지가 끝나서 넘길때 그때 다시 cell을 부르게 된다!
    //    //그래서 초기화를 계속 하게 된다.
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    NSDictionary *dataList = self.carName[indexPath.section];
    NSArray *dataListName = [dataList objectForKey:@"List"];
    
        cell.textLabel.text = dataListName[indexPath.row];
        cell.imageView.image = [UIImage imageNamed:@"emu.jpg"];
    
    return cell;
}

//셀높이
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 60;
}

//세션에 헤더넣기
- (NSString *)tableView: (UITableView *)tableView titleForHeaderInSection: (NSInteger)section
{
    if (section == 0) {
        return [NSString stringWithFormat: @"car"];
    }else {
        return [NSString stringWithFormat: @"idol"];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
