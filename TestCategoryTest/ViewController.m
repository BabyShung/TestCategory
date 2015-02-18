//
//  ViewController.m
//  TestCategoryTest
//
//  Created by Hao Zheng on 2/18/15.
//  Copyright (c) 2015 Alarm.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setMyBackgroundColor:[UIColor blueColor]];
    
}

- (void)setMyBackgroundColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

- (IBAction)click:(id)sender {
    [self setMyBackgroundColor:[UIColor greenColor]];
}

@end
