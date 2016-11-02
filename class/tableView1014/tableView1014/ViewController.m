//
//  ViewController.m
//  tableView1014
//
//  Created by Yang on 2016. 10. 14..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic)NSArray *Blackpink;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Blackpink = @[@{@"name":@"블랙핑크",@"image":@"블랙핑크2.jpg"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크3.png"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크4.png"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크5.png"},
                       @{@"name":@"제니",@"image":@"제니.jpeg"},
                       @{@"name":@"지수",@"image":@"지수.jpg"},
                       @{@"name":@"블랙핑크",@"image":@"블랙핑크1.jpg"}];
    
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    

}

//row 갯수
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.Blackpink.count;
}
//row 높이
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 300;
}
//cell 갯수
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    
    return nil;
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
