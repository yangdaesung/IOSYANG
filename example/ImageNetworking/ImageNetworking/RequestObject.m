//
//  RequestObject.m
//  ImageNetworking
//
//  Created by JoSeongGyu on 2016. 11. 9..
//  Copyright © 2016년 Jo Seong Gyu. All rights reserved.
//

#import "RequestObject.h"
#import <AFNetworking.h>

typedef NS_ENUM(NSInteger, RequestType) {
    RequestTypeImageList,
    RequestTypeUploadImage,
    RequestTypeDeleteImage
};

static NSString *const baseURLString = @"http://iosschool.yagom.net:8080/";

static NSString *ParamNameUserIDKey = @"user_id";
static NSString *ParamNameImageTitleKey = @"title";
static NSString *ParamNameImageDataKey = @"image_data";
static NSString *ParamNameImageIdKey = @"image_id";
static NSString *JSONContentKey = @"list";
static NSString *JSONResultKey = @"result";

static NSString *JSONSuccessValue = @"success";

@implementation RequestObject

+ (NSURL *)requestURL:(RequestType)type param:(NSDictionary *)paramDic {
    
    NSMutableString *urlString = [baseURLString mutableCopy];

    switch (type) {
        case RequestTypeImageList:
            [urlString appendString:@"api/list"];
            break;
        case RequestTypeUploadImage:
            [urlString appendString:@"api/upload"];
            break;
        case RequestTypeDeleteImage:
            [urlString appendString:@"api/image"];
            break;
        default:
            return nil;
            break;
    }
    
    if ([paramDic count]) {
        NSMutableString *paramString = [NSMutableString stringWithFormat:@"?"];
        
        for (NSString *key in paramDic) {
            [paramString appendString:key];
            [paramString appendString:@"="];
            
            id value = paramDic[key];
            
            if ([value isKindOfClass:[NSString class]]) {
                [paramString appendString:value];
            } else {
                value = [NSString stringWithFormat:@"%@", value];
                [paramString appendString:value];
            }
            [paramString appendString:@"&"];
        }
        
        [urlString appendString:paramString];
    }
    
    return [NSURL URLWithString:urlString];
}

+ (void)requestImageList {

    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSDictionary *paramDic = @{ParamNameUserIDKey:[[UserInformation sharedUserInfo] userId]};
    
    NSURL *requestURL = [self requestURL:RequestTypeImageList
                                   param:paramDic];

    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:requestURL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        
        NSString *notificationName = ImageDeleteDidFailNotification;
        
        if (responseObject) {
            NSDictionary *dict = responseObject;
            
            if ([dict objectForKey:JSONContentKey] != nil) {
                NSLog(@"success");
                
                NSArray *contentArray = dict[JSONContentKey];
                [UserInformation sharedUserInfo].imageInfoJSONArray = contentArray;
                
                notificationName = ImageListUpdatedNotification;
            }
        }
        dispatch_async(dispatch_get_main_queue(), ^{
                        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
            
                        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                            object:nil];
                    });
                }];

    
    [dataTask resume];
    
//   --------------------------------------------------강사님 ---------------------------------------
//    NSDictionary *paramDic = @{ParamNameUserIDKey:[[UserInformation sharedUserInfo] userId]};
//    
//    NSURL *requestURL = [self requestURL:RequestTypeImageList
//                                   param:paramDic];
//
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//    [request setHTTPMethod:@"GET"];
//    [request setURL:requestURL];
//    
//    id handler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSLog(@"%@", response);
//        NSLog(@"%@", error);
//        
//        NSString *notificationName = ImageListUpdateFailNotification;
//        
//        if (data) {
//            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
//                                                                 options:NSJSONReadingMutableLeaves
//                                                                   error:nil];
//            
//            
//            if ([dict objectForKey:JSONContentKey] != nil) {
//                NSLog(@"success");
//                
//                NSArray *contentArray = dict[JSONContentKey];
//                [UserInformation sharedUserInfo].imageInfoJSONArray = contentArray;
//                
//                notificationName = ImageListUpdatedNotification;
//            }
//        }
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
//            
//            [[NSNotificationCenter defaultCenter] postNotificationName:notificationName
//                                                                object:nil];
//        });
//    };
//    
//    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request
//                                                                     completionHandler:handler];
//    
//    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
//    
//    [dataTask resume];
//    
//    -------------------------------------------------------------강사님 코드 끝-------------

}

+ (void)requestUploadImage:(UIImage *)image title:(NSString *)title originImageId:(NSString *)imageId {
    
      NSString *requestURL = [[self requestURL:RequestTypeUploadImage param:nil] absoluteString];
    
    NSMutableDictionary *bodyParams = [[NSMutableDictionary alloc] init];
    [bodyParams setObject:[[UserInformation sharedUserInfo] userId]
                   forKey:ParamNameUserIDKey];
    
    [bodyParams setObject:title
                   forKey:ParamNameImageTitleKey];
    
    if (imageId) {
        [bodyParams setObject:imageId
                       forKey:@"id"];
        
    }
    
    NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST"
                                                                                              URLString:requestURL
                                                                                             parameters:bodyParams constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
                                                                                                 
                                                                                                 [formData appendPartWithFileData:imageData name:@"image_data" fileName:@"image.jpeg" mimeType:@"image.jpg"];
                                                                                                 
      
    } error:nil];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionUploadTask *uploadTask;
    uploadTask = [manager
                  uploadTaskWithStreamedRequest:request
                  progress:^(NSProgress * _Nonnull uploadProgress) {
                      // This is not called back on the main queue.
                      // You are responsible for dispatching to the main queue for UI updates
                      dispatch_async(dispatch_get_main_queue(), ^{
                          //Update the progress view
//                          [progressView setProgress:uploadProgress.fractionCompleted];
                          //업로드 몇 %은지 로그가 찍힌다..
                          NSLog(@"uploading...%lf %% completed",uploadProgress.fractionCompleted);
                      });
                  }
                  completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
                      
                      NSString *NotificationName = ImageListUpdatedNotification;
                      
                      if (error != nil) {
                          NSLog(@"Error occured : %@", error);
                      }
                      
                      if (responseObject) {
                          NSLog(@"Data dosen't exist");
                      }
                      
                      
                      NSDictionary *dict = responseObject;
                      
                      NSLog(@"%@",dict);
                      
                      if ([[dict objectForKey:JSONResultKey] isEqualToString:JSONSuccessValue]) {
                          NotificationName = ImageUploadDidSuccessNotification;
                      }
                      
                      dispatch_async(dispatch_get_main_queue(), ^{
                          [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
                          
                          [[NSNotificationCenter defaultCenter] postNotificationName:NotificationName
                                                                              object:nil
                                                                            userInfo:dict];
                      });
                  }];
    
    [uploadTask resume];

//-------------------------------------------------------------강사님 코드-----------------------
    
    
   // NSURL *requestURL = [self requestURL:RequestTypeUploadImage param:nil];
  
//    
//    NSLog(@"upload image %@", title);
//    
//    NSString *boundary = @"-----------------yagom";
//    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary];
//    
//    // create request
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//    [request setHTTPMethod:@"POST"];
//    [request setURL:requestURL];
//    [request addValue:contentType forHTTPHeaderField: @"Content-Type"];
//    
//    NSMutableData *body = [NSMutableData data];
//    
//    NSMutableDictionary *bodyParams = [[NSMutableDictionary alloc] init];
//    [bodyParams setObject:[[UserInformation sharedUserInfo] userId]
//                   forKey:ParamNameUserIDKey];
//    
//    [bodyParams setObject:title
//                   forKey:ParamNameImageTitleKey];
//    
//    if (imageId) {
//        [bodyParams setObject:imageId
//                       forKey:@"id"];
//        
//    }
//    
//    NSData *boundaryData = [[NSString stringWithFormat:@"--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding];
//    
//    for (NSString *key in bodyParams) {
//        
//        [body appendData:boundaryData];
//        
//        NSData *valueKeyData = [[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"\r\n\r\n", key] dataUsingEncoding:NSUTF8StringEncoding];
//        [body appendData:valueKeyData];
//        
//        NSString *value = bodyParams[key];
//        NSData *valueData = [[NSString stringWithFormat:@"%@\r\n", value] dataUsingEncoding:NSUTF8StringEncoding];
//        [body appendData:valueData];
//    }
//    
//    [body appendData:boundaryData];
//    
//    NSData *imageKeyData = [[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"; filename=\"image.jpeg\"\r\n", ParamNameImageDataKey] dataUsingEncoding:NSUTF8StringEncoding];
//    [body appendData:imageKeyData];
//
//    NSData *imageContentTypeData = [@"Content-Type: image/jpeg\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
//    [body appendData:imageContentTypeData];
//
//    NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
//    [body appendData:imageData];
//
//    NSData *finishBoundaryData = [[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding];
//    [body appendData:finishBoundaryData];
//
//    [request setHTTPBody:body];
//    
//    NSString *bodyString = [[NSString alloc] initWithData:body
//                                                 encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@", bodyString);
//    
//    
//    id handler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//        NSString *notificationName = ImageUploadDidFailNotification;
//        
//        if (error != nil) {
//            NSLog(@"Error occured : %@", error);
//        }
//        
//        if (data == nil) {
//            NSLog(@"Data dosen't exist");
//        }
//        
//        NSLog(@"%@", response);
//        
//        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
//                                                             options:NSJSONReadingMutableLeaves
//                                                               error:nil];
//        NSLog(@"%@",dict);
//        
//        if ([[dict objectForKey:JSONResultKey] isEqualToString:JSONSuccessValue]) {
//            notificationName = ImageUploadDidSuccessNotification;
//        }
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
//            
//            [[NSNotificationCenter defaultCenter] postNotificationName:notificationName
//                                                                object:nil
//                                                              userInfo:dict];
//        });
//        
//        
//    };
//    
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURLSessionUploadTask *uploadTask = [session uploadTaskWithRequest:request
//                                                               fromData:nil
//                                                      completionHandler:handler];
//    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
//    [uploadTask resume];
//
    //-------------------------------------------------------------------강사님 코드 끝-------------
    
}
//만져야 한다 딜리트가 안된다...
+ (void)requestDeleteImage:(NSString *)imageId {
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSDictionary *paramDic = @{ParamNameUserIDKey:[[UserInformation sharedUserInfo] userId]};
    
    NSURL *requestURL = [self requestURL:RequestTypeImageList
                                   param:paramDic];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"DELETE"];
    [request setURL:requestURL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        
        NSString *notificationName = ImageDeleteDidFailNotification;
        
        if (responseObject) {
            NSDictionary *dict = responseObject;
            
            if ([[dict objectForKey:JSONContentKey] isEqualToString:JSONSuccessValue]) {
                NSLog(@"success");
                
                [self requestImageList];
                
                notificationName = nil;
                
            }
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
            
            if (notificationName) {
                
            
            [[NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                object:nil];
            }
        });
    }];
    
    
    [dataTask resume];
    
//
//    
//    NSDictionary *paramDic = @{@"user_id":[[UserInformation sharedUserInfo] userId],
//                               @"image_id":imageId};
//    
//    NSURL *requestURL = [self requestURL:RequestTypeDeleteImage
//                                   param:paramDic];
//    
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//    [request setHTTPMethod:@"DELETE"];
//    [request setURL:requestURL];
//    
//    id handler = ^(NSData * _Nullable data, NSHTTPURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSLog(@"%@", response);
//        NSLog(@"%@", error);
//        
//        NSString *notificationName = ImageDeleteDidFailNotification;
//        
//        if (data) {
//            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
//                                                                 options:NSJSONReadingMutableLeaves
//                                                                   error:nil];
//            
//            
//            if ([[dict objectForKey:JSONResultKey] isEqualToString:JSONSuccessValue]) {
//                NSLog(@"success");
//                
//                [self requestImageList];
//                
//                notificationName = nil;
//            }
//        }
//        
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
//                
//                if (notificationName) {
//                [[NSNotificationCenter defaultCenter] postNotificationName:notificationName
//                                                                    object:nil];
//                    
//                }
//            });
//    };
//    
//    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request
//                                                                     completionHandler:handler];
//    
//    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
//    
//    [dataTask resume];
}

@end
