//
//  ViewController.m
//  ReiviewPicker1028
//
//  Created by Yang on 2016. 10. 28..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

@end

@implementation ViewController
- (IBAction)tapImageView:(id)sender {

    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"사진가져오기" message:@"사진을 가져올 소스 선택" preferredStyle:UIAlertControllerStyleActionSheet];

//    __strong ViewController *weakSelf = self;
    ViewController *weakSelf = self;
    
    void (^actionHandler)(UIAlertAction * _Nonnull action) = ^(UIAlertAction * _Nonnull action){
        UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        if ([[action title] isEqualToString:@"사진 앨범"]) {
            sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        }else if ([[action title] isEqualToString:@"카메라"]) {
            sourceType = UIImagePickerControllerSourceTypeCamera;
        }
        
        [weakSelf showImagePicker:sourceType];
    };
    
    NSArray *actionTitle = @[@"사진 라이브러리",@"사진 앨범",@"취소"];
    
    for (NSString *title in actionTitle) {
        UIAlertActionStyle Style = UIAlertActionStyleDefault;
        
        if ([title isEqualToString:@"취소"]) {
            Style = UIAlertActionStyleCancel;
        }else if ([title isEqualToString:@"카메라"]) {
            if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] == NO) {
                continue;
            }
            Style = UIAlertActionStyleDestructive;
        }
        UIAlertAction *action = [UIAlertAction actionWithTitle:title style:Style handler:actionHandler];
        
        [actionSheet addAction:action];
    }

    [self presentViewController:actionSheet animated:YES completion:nil];
};

- (void)showImagePicker: (UIImagePickerControllerSourceType)sourceType
{
    
   UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    [picker setDelegate:self];
    [picker setSourceType:sourceType];
    [picker setAllowsEditing:YES];
    [self presentViewController:picker animated:YES completion:nil];

}

#pragma mark - UIimagePickerController Delegate

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *pickedImage = info[UIImagePickerControllerEditedImage];
    if (pickedImage == nil) {
        pickedImage = info[UIImagePickerControllerOriginalImage];
    }
    if (pickedImage == nil) {
        NSLog(@"사진이 없습니다.");
        return;
    }
    //이미지 저장 !--------------------------------------------------------------------
    //Binary data
    NSData *imageData = UIImageJPEGRepresentation(pickedImage, 1.0);
    //변환된 데이터를 userDefault에 저장....
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:imageData forKey:@"imageData"];
    [userDefault synchronize];
    //--------------------------------------------------------------------------
    //[[self ImageView] setImage:pickedImage];
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //저장된 이미지 불러오기 !!!!!!!!!!!!!!!
    NSData *imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"imageData"];
    UIImage *image = [UIImage imageWithData:imageData];
    [[self ImageView] setImage:image];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didUserDefaultsChange:)
                                                 name:NSUserDefaultsDidChangeNotification
                                                object:nil];
    
}


-(void)didUserDefaultsChange:(NSNotification *)noti
{
    NSLog(@"user default changed");
    NSData *imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"imageData"];
    UIImage *image = [UIImage imageWithData:imageData];
    [[self ImageView] setImage:image];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
