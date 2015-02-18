//
//  TestCategoryTestTests.m
//  TestCategoryTestTests
//
//  Created by Hao Zheng on 2/18/15.
//  Copyright (c) 2015 Alarm.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController+Test.h"


@interface TestCategoryTestTests : XCTestCase

@property (nonatomic, strong) ViewController *vc;

@end

@implementation TestCategoryTestTests

- (void)setUp {
    [super setUp];
    
    self.vc = (ViewController *)[[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle bundleForClass:[self class]]] instantiateViewControllerWithIdentifier:@"VC"];
    
    //self.vc = [[ViewController alloc] init];
    
    [self.vc view];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testDefaultBgColor {
    XCTAssertEqualObjects(self.vc.view.backgroundColor, [UIColor blueColor],@"color blue");
}

- (void)testCategoryChangingColor
{
    [self.vc setMyBackgroundColor:[UIColor redColor]];
    XCTAssertEqualObjects(self.vc.view.backgroundColor, [UIColor redColor],@"color red");
}

- (void)testStoryboardShouldBeInitialized
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle bundleForClass:[self class]]];
    XCTAssertNotNil(storyboard, @"");
}

- (void)testButtonClick
{
    [self.vc.btn1 sendActionsForControlEvents:UIControlEventTouchUpInside];
    XCTAssertEqualObjects(self.vc.view.backgroundColor, [UIColor greenColor],@"color green");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
