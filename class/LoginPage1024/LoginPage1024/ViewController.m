//
//  ViewController.m
//  LoginPage1024
//
//  Created by Yang on 2016. 10. 24..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "ViewController3.h"
#import "DataCenter.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *idLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSInteger count;
@property NSMutableArray *cell;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.title = @"The Apple";
    
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    
    self.idLabel.text = [user objectForKey:@"ID"];
    
    UIBarButtonItem *addBtn = [[UIBarButtonItem alloc] initWithTitle:@"ADD" style:UIBarButtonItemStylePlain target:self action:@selector(touchupInsideAddTableCell:)];
    self.navigationItem.rightBarButtonItem = addBtn;
    
    
    
}

//로그아웃 하고 메인뷰로 돌아감
- (IBAction)logoutAction:(id)sender
{
    
    [self.navigationController popViewControllerAnimated:YES];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cell.count;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 300;
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",self.count];
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyBoard instantiateViewControllerWithIdentifier:@"LogOutViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)touchupInsideAddTableCell:(UIBarButtonItem *)sender {
    
    NSLog(@"touch Add button");
    self.count += 1;
    //    [self.cell addObject: [NSString stringWithFormat:@"%ld",self.count]];
    [self.cell addObject:[NSNumber numberWithInteger:self.count]];
    [self.tableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
