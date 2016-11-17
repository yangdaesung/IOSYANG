//
//  ImageTableViewController.m
//  NetworkingReview1116
//
//  Created by Yang on 2016. 11. 16..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ImageTableViewController.h"

@interface ImageTableViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation ImageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //새로고침하라고 명령하는것.........................
    [[NSNotificationCenter defaultCenter] addObserver:self.tableView
                                             selector:@selector(reloadData)
                                                 name:imageListUpdatedNotification
                                               object:nil];
    
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //셀을 누르고 다시  메인 화면으로 넘어갈때 로그인창이 안뜨겠금 한다.....
    if ([[[UserInformation sharedUserInfo] userId] isEqualToString:self.navigationItem.title] == NO) {
        [self showUserIDAlert];
    };
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)showUserIDAlert
{
    //alert 창 띄우기
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ID 입력"
                                                                   message:@"유저 ID 입력해주세요"
                                                            preferredStyle:  UIAlertControllerStyleAlert];
    //핸들러 이해하자...
    
    id actionHandler = ^(UIAlertAction * _Nonnull action) {
            //사용자가 한번도 사용을 안하거나
        if (alert.textFields.firstObject.text.length == 0 ||
            //사용자가 공란을 넣었거나
            [alert.textFields.firstObject.text containsString:@" "] ||
            //사용자가 0,값을 안넣었거나 했을때
            [alert.textFields.firstObject.text integerValue] == 0) {
            //그러면 다시 새로 불러온다
            [self showUserIDAlert];
        }else {
            //텍스트를 유저 인포에 저장을 한다.
            [[UserInformation sharedUserInfo] setUserId:alert.textFields.firstObject.text];
            //텍스트를 네비게이터 라벨에 띄운다
            self.navigationItem.title = alert.textFields.firstObject.text;
            
            [RequestObject requestImageList];
        }
    };
    //alert 창 액션...
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                        //handler 적용...
                                                     handler:actionHandler];
    //alert 창에  textfield 띄우기
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"100~150의 숫자";
    //keyboard Type 바꾸기..
        textField.keyboardType = UIKeyboardTypeNumberPad;
    }];
    
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

#pragma mark - IBActions

- (IBAction)clickRefeshBtn:(id)sender
{
    //사진리스트 요청
}
- (IBAction)clickAddBtn:(id)sender
{
    //이미지피커 보여주기
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    [imagePicker setDelegate:self];
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
    

}
//이미지 제목 불러오기 alert
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *image = nil;
    
    if (info[UIImagePickerControllerEditedImage])
    {
        image = info[UIImagePickerControllerEditedImage];
    }else{
        image = info[UIImagePickerControllerOriginalImage];
    }
   
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"사진 제목"
                                                                   message:@"사진 제목을 입력하세요"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    //핸들러..
    id nameHandler = ^(UIAlertAction * _Nonnull action)
    {
        if (alert.textFields.firstObject.text.length == 0) {
            
        }else{
            NSString *imageTitle = alert.textFields.firstObject.text;
            
            NSLog(@"사진 제목 : %@",imageTitle);
            
            //업로드....
            [RequestObject requestUploadImage:image title:imageTitle];
        }
    };
    //ok 버튼
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nameHandler];
    //cancel 버튼
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alert addAction:okAction];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"사진 제목";
    }];
    
    [alert addAction:cancelAction];
    
    [picker dismissViewControllerAnimated:YES completion:^{
        [self presentViewController:alert animated:YES completion:nil];
    }];
    
    
    
}
#pragma mark - Table View data sourse
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[UserInformation sharedUserInfo] imageInfoList] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell" forIndexPath:indexPath];
    
    //
    NSDictionary *imageInfoDic = [[[UserInformation sharedUserInfo]imageInfoList] objectAtIndex:indexPath.row];
    NSString *imageTitle = [imageInfoDic objectForKey:@"title"];
    NSString *thumbnailURLString = [imageInfoDic objectForKey:@"thumbnail_url"];
    NSURL *thumbnailURL = [NSURL URLWithString:thumbnailURLString];
    
    //사진 불러오기.......................................................................끄아
    id imageTaskHandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        UIImage *image = [UIImage imageWithData:data];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            UITableViewCell *cellForUpdate = [tableView cellForRowAtIndexPath:indexPath];
            cellForUpdate.imageView.image = image;
        });
        
    };
    
    NSURLSession * session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:thumbnailURL completionHandler:imageTaskHandler];
    
    [dataTask resume];
    //사진 불러오기 끝...................................................ㅡㅡ^
    
    //텍스트 제목 ..
    [[cell textLabel] setText:imageTitle];
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        //[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        //requestDeleteImage
            
    
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
