//
//  ViewController.m
//  MyImagePicker1027
//
//  Created by Yang on 2016. 10. 27..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)imagePicker:(id)sender {
    
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
    
    //handler!!
    void (^handlerBlock)(UIAlertAction *)  = ^(UIAlertAction * _Nonnull action)
    {
        NSLog(@"핸들러가 호출되었습니다.");
        
        if ([action.title isEqualToString:@"앨범"]){
            UIImagePickerController *imgAlbum = [[UIImagePickerController alloc] init];
            imgAlbum.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
            imgAlbum.allowsEditing = NO;
            imgAlbum.delegate = self;
            [self presentViewController:imgAlbum animated:YES completion:nil];
            NSLog(@"앨범");
            
        }else if ([action.title isEqualToString:@"라이브러리"]){
            UIImagePickerController *imgCamera = [[UIImagePickerController alloc] init];
            imgCamera.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            imgCamera.allowsEditing = NO;
            imgCamera.delegate = self;
            [self presentViewController:imgCamera animated:YES completion:nil];

            NSLog(@"라이브러리");
        }else if ([action.title isEqualToString:@"취소"]){
            UIImagePickerController *cancel1 = [[UIImagePickerController alloc] init];
            cancel1.delegate = self;
            [self dismissViewControllerAnimated:YES completion:nil];
            NSLog(@"취소");
        }
    
    };
    //메인 Alert
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"이미지" message:@"" preferredStyle:style];
    
    //앨범버튼
    UIAlertAction *live = [UIAlertAction actionWithTitle:@"앨범" style:UIAlertActionStyleDefault handler:handlerBlock];
    [alertController addAction:live];
    
    
            
    //라이브러라버튼
    UIAlertAction *album = [UIAlertAction actionWithTitle:@"라이브러리" style:UIAlertActionStyleDefault handler:handlerBlock];
    [alertController addAction:album];
    
    //취소버튼
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:handlerBlock];
    [alertController addAction:cancel];
    
    
    [self presentViewController:alertController animated:YES completion:nil];

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    //이미지 불러오기
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    switch (picker.sourceType) {
        case UIImagePickerControllerSourceTypePhotoLibrary:
            self.imageView.image = image;
            [self.imageView setContentMode:UIViewContentModeScaleToFill];
            break;
        case UIImagePickerControllerSourceTypeSavedPhotosAlbum:
            self.imageView.image = image;
            [self.imageView setContentMode:UIViewContentModeScaleAspectFill];
        default:
            break;
    }
//    if (picker.sourceType == UIImagePickerControllerSourceTypePhotoLibrary) {
//        self.imageView.image = image;
//        [self.imageView setContentMode:UIViewContentModeScaleAspectFill];
//    }else {
//        self.imageView.image = image;
//        [self.imageView setContentMode:UIViewContentModeScaleAspectFill];
//    }
    //이미지 불러왔을때 알람!
    UIAlertController *imgAlert = [UIAlertController alertControllerWithTitle:@"이미지 나왔어요 " message:@"" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *imgAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    [imgAlert addAction:imgAction];
    [picker dismissViewControllerAnimated:YES completion:nil];
    [self presentViewController:imgAlert animated:YES completion:nil];

}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    NSLog(@"Image Picker Controller Cancelled");
    [picker dismissViewControllerAnimated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
