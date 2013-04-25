//
//  ViewController.m
//  week3AOC1
//
//  Created by Angela Ross on 4/24/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//add function

- (int)add:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    int result = firstInt + secondInt;
    NSLog(@"%d + %d = %d", firstInt, secondInt, result);
    
    NSString *endResult = [[NSString alloc] initWithFormat:@"Added together we have %d", result];
    
//    [self displayAlertWithString:endResult];
    
    return result;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
