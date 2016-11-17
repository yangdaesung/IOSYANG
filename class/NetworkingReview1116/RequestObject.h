//
//  RequestObject.h
//  NetworkingReview1116
//
//  Created by Yang on 2016. 11. 16..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RequestObject : NSObject

+ (void)requestImageList;

+ (void)requestUploadImage:(UIImage *)image title:(NSString *)title;

+ (void)requestRemovedImage:(NSString *)ImageId;

@end
