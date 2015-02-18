//
//  SecondViewController.m
//  TestCategoryTest
//
//  Created by Hao Zheng on 2/18/15.
//  Copyright (c) 2015 Alarm.com. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic, copy) NSString *string;

@end

@implementation SecondViewController

- (void)myPrivateMethod
{
    NSLog(@"xxxx private");
    
    self.string = @"xxx inner";
    
    NSLog(@"%@",self.string);
}

@end
