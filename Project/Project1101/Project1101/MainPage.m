//
//  MainPage.m
//  Project1101
//
//  Created by Yang on 2016. 11. 12..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "MainPage.h"

@interface MainPage ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic)NSInteger count;
@property (nonatomic)NSMutableArray *cell;

@end

@implementation MainPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //오른쪽 추가 버튼
    UIBarButtonItem *addBtn = [[UIBarButtonItem alloc] initWithTitle:@"추가" style:UIBarButtonItemStylePlain target:self action:@selector(tableviewAddCell:)];
    self.navigationItem.rightBarButtonItem = addBtn;

    
  
}






- (IBAction)tableviewAddCell:(id)sender
{
    self.count += 1;
    [self.cell addObject:[NSNumber numberWithInteger:self.count]];
    [self.tableView reloadData];

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
