//
//  ViewController.m
//  Networking1115
//
//  Created by Yang on 2016. 11. 15..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *addBtn;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableDictionary *photoDic;
@property NSMutableArray *photoArray;

@property NSInteger count;

@end

@implementation ViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.photoArray = [[NSMutableArray alloc] init];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //userdefault..
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
  
    //네비게이션바 이름..Id = 104
    self.navigationItem.title = [user objectForKey:@"ID"];
    
    //델리게이트..
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    UIAlertController *loginAlert = [UIAlertController alertControllerWithTitle:@"유저 ID 입력"
                                                                        message:@"유저 id를 입력해주십시오."
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *loginAction = [UIAlertAction actionWithTitle:@"확인"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction * _Nonnull action) {
                                                            //얼럿안의 텍스트필드 접근
                                                            UITextField *number = loginAlert.textFields.firstObject;
                                                            NSLog(@"textfield : %@", number.text);
                                                            //데이터 저장
                                                            [[DataCenter sharedManger] saveUserID:[NSString stringWithFormat:@"%@", number.text]];
                                                            //네비게이션 타이틀 저장된 데이터로 표현
                                                            self.navigationItem.title = [NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"ID"]];
                                                            NSLog(@"title : %@", self.navigationItem.title);
                                                        }];
    
    [loginAlert addAction:loginAction];
    
    //얼럿의 텍스트필드 생성
    [loginAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"100 ~ 150사이의 숫자";
        
    }];
    
    [self presentViewController:loginAlert animated:nil completion:nil];
    
    self.photoDic = [[NSMutableDictionary alloc] init];
    self.photoArray = [[NSMutableArray alloc] init];
}

 //셀 갯수
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.photoArray.count;
}
//셀높이
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    if (indexPath.section == 0) {
    
        cell.imageView.image = [self.photoDic objectForKey:@"image"];
        cell.textLabel.text = [NSString stringWithFormat:@"%@",[self.photoDic objectForKey:@"imageName"]];
    }return cell;
}

- (IBAction)showImagepicker:(id)sender
{
    UIImagePickerController *imgCamera = [[UIImagePickerController alloc] init];
    imgCamera.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imgCamera.allowsEditing = NO;
    imgCamera.delegate = self;
    [self presentViewController:imgCamera animated:YES completion:nil];
    
    [self showAlertController:UIAlertControllerStyleActionSheet];
}

- (void)showAlertController:(UIAlertControllerStyle)style
{
    
    if (style == UIAlertControllerStyleActionSheet) {
        NSLog(@"이미지를 불러옵니다.");
    }else
    {
        NSLog(@"틀렸습니다.");
        return;
    }
    

}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
    [self dismissViewControllerAnimated:YES completion:^{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"제목"
                                                                       message:@"제목을 입력해 주세요" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"확인"
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
                                                           UITextField *field = alert.textFields.firstObject;
                                                           NSLog(@"textfield : %@",field.text);
                                                           [self.photoDic setObject:field.text forKey:@"imageName"];
                                                           [self.photoDic setObject:image forKey:@"image"];
                                                           [self.photoArray addObject:self.photoDic];
                                                           [self.tableView reloadData];
                                                           
                                                       }];
        [alert addAction:action];
        
        [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            textField.placeholder = @"제목";
            
        }];
        [self presentViewController:alert animated:nil completion:nil];
        
    }];
   
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    NSLog(@"Image Picker Controller Cancelled");
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
