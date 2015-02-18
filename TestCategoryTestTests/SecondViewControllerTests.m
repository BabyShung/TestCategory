//
//  SecondViewControllerTests.m
//  TestCategoryTest
//
//  Created by Hao Zheng on 2/18/15.
//  Copyright (c) 2015 Alarm.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SecondViewController.h"


@interface SecondViewController (Test)

- (void)myPrivateMethod;

@end

@interface SecondViewControllerTests : XCTestCase

@property (nonatomic, strong) SecondViewController *secondVC;

@end

@implementation SecondViewControllerTests

- (void)setUp {
    [super setUp];
    
    self.secondVC = [[SecondViewController alloc] init];
    [self.secondVC view];
    
}

- (void)tearDown {
    [super tearDown];
}

- (void)testPrivateMethod {
    
    XCTAssertNoThrow([self.secondVC myPrivateMethod],@"called private method");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
