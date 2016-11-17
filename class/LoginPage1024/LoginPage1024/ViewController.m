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

//cell이 될 NSMutableArray 초기화
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.cell = [[NSMutableArray alloc] init];
    
}


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

- (void)listSave:(NSArray *)list
{
    NSString *dicPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *filePath = [dicPath stringByAppendingString:@"LoginPage1024.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:filePath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"LoginPage1024" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:filePath error:nil];
    }
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];
    [dic setObject:list forKey:@"userID"];
    [dic writeToFile:filePath atomically:NO];
    
}

//리스트 값불러오기....
- (NSArray *)loadList
{
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString*filePath = [docPath stringByAppendingString:@"LoginPage1024.plist"];
    
    //번들에서 값을 불러와서 도큐먼트에 저장..
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:filePath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"LoginPage1024" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:filePath error:nil];
    }
    
//    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];
//    [dic setObject:list forKey:@"userID"];
//    [dic writeToFile:filePath atomically:NO];
//    
    
    
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSArray *nameList = [dic objectForKey:@"userID"];
    
    return nameList;
    
}




//셀갯수
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cell.count;
}
//셀높이
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",self.count];
    }
//    cell.textLabel.text = [self.cell objectAtIndex:indexPath.row];
//    NSLog(@"cell label created");
    return cell;
}

//셀선택하면 실행
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyBoard instantiateViewControllerWithIdentifier:@"LogOutPage"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

//추가버튼 누르면 번호나온다.
- (IBAction)touchupInsideAddTableCell:(UIBarButtonItem *)sender {
    
    NSLog(@"touch Add button");
    self.count += 1;
    //    [self.cell addObject: [NSString stringWithFormat:@"%ld",self.count]];
    [self.cell addObject:[NSNumber numberWithInteger:self.count]];
    NSLog(@"%ld",self.cell.count);
    [self.tableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
