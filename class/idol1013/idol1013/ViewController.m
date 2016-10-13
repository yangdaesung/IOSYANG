//
//  ViewController.m
//  idol1013
//
//  Created by Yang on 2016. 10. 13..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>


@property NSArray *idol;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.idol = @[@""]
    
    
    [super viewDidLoad];
    UITableView *totalIdol = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    totalIdol.dataSource = self;
    totalIdol.delegate = self;
    [self.view addSubview:totalIdol];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%ld", self.idol.count);
    return self.idol.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    NSLog(@"%ld",indexPath.row);
    
    cell.textLabel.text = [self.idol objectForKey:@"menidol"][indexPath.row];
    
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
