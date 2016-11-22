//
//  ViewController.m
//  ReviewTableView1121
//
//  Created by Yang on 2016. 11. 21..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property NSInteger count;
@property UIView *pnView;
@property UITableView *table;

@property NSMutableArray *cell;
@property NSDateFormatter *dateInfo;
@end

@implementation ViewController

//cell이 될 NSMutableArray 초기화
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.cell = [[NSMutableArray alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pnView.frame = CGRectMake(0, 200, 200, 200);
   self.pnView.backgroundColor = [UIColor purpleColor];
    
    self.table = [[UITableView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)
                                                      style:UITableViewStylePlain];
    
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithTitle:@"ADD" style:UIBarButtonItemStylePlain target:self action:@selector(getDate)];
    
    self.navigationItem.leftBarButtonItem = barBtn;
    
    //타이틀 시간 제목..
    NSDate *date = [NSDate date];
    self.dateInfo = [[NSDateFormatter alloc] init];
    [self.dateInfo setDateFormat:@"YYYY/MM/dd HH:mm:ss"];
    
    [self.navigationItem setTitle:[self.dateInfo stringFromDate:date]];
    
    
    self.table.tableHeaderView = self.pnView;
    self.table.tableFooterView = self.pnView;
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.view addSubview:self.table];
    

}

- (void)getDate
{
    NSDate *date = [NSDate date];
    self.dateInfo = [[NSDateFormatter alloc] init];
    [self.dateInfo setDateFormat:@"YYYY/MM/dd HH:mm:ss"];
    [self.cell addObject:[self.dateInfo stringFromDate:date]];
    [self.table reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return self.cell.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return [NSString stringWithFormat:@"blackPink"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
    
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
   
        
    }
    
    //time이라는 NSString 객체를 만들어 인데스값을 지정한다..
    self.time = [self.cell objectAtIndex:indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    cell.textLabel.text = self.time;
    
    //cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"NextViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}



//- (void)touchupInsideAddTableCell:(UIBarButtonItem *)sender {
//    
//    NSLog(@"touch Add button");
//    
//    //self.count += 1;
//    
//   NSDateFormatter *date = [[NSDateFormatter alloc] init];
//    date.dateFormat = @"yyyy-MM-dd, HH:mm:ss";
//    
//    [self.cell addObject:date];
//    
////    [self.cell addObject:[NSNumber numberWithInteger:self.count]];
////    NSLog(@"%ld",self.cell.count);
////    [self.table reloadData];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
