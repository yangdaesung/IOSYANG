//
//  TDD_FizzBuzzTests.m
//  TDD_FizzBuzzTests
//
//  Created by Yang on 2016. 10. 12..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TDD_FizzBuzzTests : XCTestCase

@end

@implementation TDD_FizzBuzzTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


// Active FizzBuzz Code
- (NSString *)say:(NSInteger)number {
    
    return [NSString stringWithFormat:@"%ld",number];
    
}

- (NSString *)findFizzForNumber5:(NSInteger)number{
    
    if(number%3 == 0){
        
        NSLog(@"%ld",number);
        return @"fizz";
    }
    
    return @"notfizz";
}

- (void)buzzNumber:(NSInteger)number
{
    if (number%5 ==0) {
        
        NSLog(@"buzz");
    }
}

- (NSString *)primeFactor:(NSInteger)number
{
    for (NSInteger i = 2; number == 1; number /= i) {
        if (number%2 != 0) {
            
            return @"NO";
        }
    }
    
    return @"YES";
}



// Test Cases
- (void)testFizzBuzzShouldSayForNumber1 {
    
    
    XCTAssertEqualObjects(@"1", [self say:1]);
    XCTAssertEqualObjects(@"fizz", [self findFizzForNumber5:6]);
    XCTAssertEqual(@"YES" ,[self primeFactor:11]);
}


- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
