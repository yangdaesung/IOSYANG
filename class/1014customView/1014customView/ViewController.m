//
//  ViewController.m
//  1014customView
//
//  Created by Yang on 2016. 10. 14..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "IdolCell.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property UITableView *tvView;
@property NSArray *blackPink;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.blackPink = @[@{@"title":@"블랙핑크", @"imageUrl":@"블랙핑크1.jpg"},
                       @{@"title":@"블랙핑크 단체", @"imageUrl":@"블랙핑크2.jpg"},
                       @{@"title":@"제니", @"imageUrl":@"블랙핑크3.png"},
                       @{@"title":@"지수", @"imageUrl":@"블랙핑크4.png"}];
    
    
    
    

    self.tvView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tvView.delegate = self;
    self.tvView.dataSource = self;
    [self.view addSubview:self.tvView];

    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.blackPink.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 600;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    IdolCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[IdolCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    NSDictionary *data = self.blackPink[indexPath.row];
    
    
    [cell setBackgroundImageName:[data objectForKey:@"imageUrl"]];
    [cell setTitle:[data objectForKey:@"title"]];
    
    return cell;
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
