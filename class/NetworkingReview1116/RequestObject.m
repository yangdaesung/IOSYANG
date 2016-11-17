//
//  RequestObject.m
//  NetworkingReview1116
//
//  Created by Yang on 2016. 11. 16..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "RequestObject.h"

@implementation RequestObject


+ (void)requestImageList
{
    NSString *userId = [[UserInformation sharedUserInfo] userId];
    //string
    NSString *destinationURLString =
    [NSString stringWithFormat:@"http://iosschool.yagom.net:8080/api/list?user_id=%@",userId];
    //string객체를 NSURL객체로 변환
    NSURL *destinationURL = [NSURL URLWithString:destinationURLString];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    //메소드 설정
    [request setHTTPMethod:@"GET"];
    //주소 설정
    [request setURL:destinationURL];
    
    id taskhandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
    {
        
        NSLog(@"request image list response : %@, error : %@",response,error);
        
        //json 을 dictionary로 받아온다..
        NSError *jsonParsingError;
        NSDictionary *jasonResult = [NSJSONSerialization JSONObjectWithData:data
                                                                    options:NSJSONReadingMutableLeaves
                                                                      error:&jsonParsingError];
        
        NSLog(@"json parsing error : %@, json result : %@",jsonParsingError,jasonResult);
        
        //배열로 키값을 받아 넣는다..
        NSArray *imageInfoList = [jasonResult objectForKey:@"list"];
        //배열이 유저인포에 저장이 된다..
        [[UserInformation sharedUserInfo] setImageInfoList:imageInfoList];
        
        //notification 쏴주는것..
        NSString *notificationName = nil;
        
        if (imageInfoList == nil) {
            notificationName = ImageListIpdatefailNotification;
        }else{
            notificationName = imageListUpdatedNotification;
        }
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:imageListUpdatedNotification
                                                                object:nil];
        });
    };
    
    NSURLSession *session =[NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:taskhandler];
    
    [dataTask resume];
    
}

+ (void)requestRemovedImage:(NSString *)ImageId
{
    NSDictionary *dic = @{@"user_id":[[UserInformation sharedUserInfo] userId],
                          @"image_id":ImageId};
    
    
    
    
    
}


+ (void)requestUploadImage:(UIImage *)image title:(NSString *)title
{
    NSString *userId = [[UserInformation sharedUserInfo] userId];
    //string
    NSString *destinationURLString = @"http://iosschool.yagom.net:8080/api/upload";
    //string객체를 NSURL객체로 변환
    NSURL *destinationURL = [NSURL URLWithString:destinationURLString];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    //메소드 설정
    [request setHTTPMethod:@"POST"];
    //주소 설정
    [request setURL:destinationURL];
    //
    
    
    //----하이픈은 4개이상 넣어야 한다...
    NSString *boundaryString = @"--------------------yagom";
    NSString *contentDescription = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundaryString];
    //이요청은?
    [request addValue:contentDescription forHTTPHeaderField:@"Content-Type"];
    //바디에 넣어줄 메소드 ....!!!
    NSData *boundaryData = [[NSString stringWithFormat:@"--%@\r\n",boundaryString] dataUsingEncoding:NSUTF8StringEncoding];
    //바운더리에 넣을수 있는 곳...
    NSMutableData *bodyData = [[NSMutableData alloc] init];
    //첫 바운더리 추가..append는 붙여주다라는 뜻이다
    [bodyData appendData:boundaryData];
    
    //user_id 추가...
    NSData *nameData = [@"Content-Disposition: form-data; name=\"user_id\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    NSData *valueData = [[NSString stringWithFormat:@"%@\r\n",userId] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:valueData];
    
    //바운더리 추가
    [bodyData appendData:boundaryData];
    //title 추가...
    nameData = [@"Content-Disposition: form-data; name=\"title\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    valueData = [[NSString stringWithFormat:@"%@\r\n",title] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:valueData];
    
    //바운더리 추가
    [bodyData appendData:boundaryData];
    //title 추가...
    nameData = [[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"image_data\"; filename=\"image.jpeg\"\r\n" ] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    NSData *imageContentTypeData = [@"Content-Type: image.jpeg\r\n\r\n"dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:imageContentTypeData];
    
    NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
    [bodyData appendData:imageData];
    //body 종료
    NSData *finishBoundaryData = [[NSString stringWithFormat:@"\r\n--%@--\r\n",boundaryString]dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:finishBoundaryData];
    
    [request setHTTPBody:bodyData];
    
    
    id uploadHeadler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            NSLog(@"Error occured : %@",error);
            return;
        }
        if (data == nil) {
            NSLog(@"data dosen't exist");
            return;
        }
        NSLog(@"%@",response);
        
        NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:NSJSONReadingMutableLeaves
                                                                     error:nil];
        NSLog(@"%@",jsonResult);
        
        if ([[jsonResult objectForKey:@"result"] isEqualToString:@"success"]) {
            [self requestImageList];
        }
    };
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *uploadTask = [session uploadTaskWithRequest:request
                                                             fromData:nil
                                                    completionHandler:uploadHeadler];
    [uploadTask resume];
    
    
}

@end
