//
//  main.m
//  first
//
//  Created by Yang on 2016. 12. 19..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic) NSInteger wheel;
@property NSInteger seats;

    //member method - .h와 같은 영역..
- (void)settWheels:(NSInteger)w;
- (void)setSeats:(NSInteger)s;
- (NSInteger)wheels;
- (NSInteger)seats;
- (void)print;

@end

@implementation Vehicle

- (void)settWheels:(NSInteger)w
{
    self.wheel = w;
}
- (void)setSeats:(NSInteger)s
{
    self.seats = s;
}
- (void)print
{
    NSLog(@"wheel : %ld, seats : %ld",self.wheel,self.seats);
}

- (NSInteger)wheels
{
    return self.wheel;
}
- (NSInteger)seats
{
    return self.seats;
}

@end

int main(int argc, const char * argv[]){
    @autoreleasepool {
        
        Vehicle *hello = [[Vehicle alloc] init]; //create instance object
        [hello settWheels:4];
        [hello setSeats:2];
        
        NSLog(@"wheel : %ld, seats : %ld",hello.wheels,hello.seats);
    }
    return 0;
}


