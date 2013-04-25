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
    
//    NSString *result = [[NSString alloc] initWithFormat:@"Added together we have %d", result];
    
//    [self displayAlertWithString:endResult];
    
    return result;
}

//bool function named compare

- (BOOL)compare:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    NSLog(@"Does %d and %d equal?", firstInt, secondInt);
    
    if(firstInt ==secondInt)
    {
        NSString *equal = [[NSString alloc] initWithFormat:@"These numbers %d and %d are equal.", firstInt, secondInt];
//        [self displayAlertWithString:equal];
        NSLog(@"Yes");
        return YES;
    }else
    {
        NSString *notEqual = [[NSString alloc] initWithFormat:@"These numbers %d and %d are not equal.", firstInt, secondInt];
        
 //       [self displayAlertWithString:notEqual];
        NSLog(@"No");
        return NO;
    }
}

//append function

-  (NSString *)append:(NSString*)firstString secondString:(NSString *)secondString
{
    NSMutableString *stringsAppended = [[NSMutableString alloc] initWithFormat:firstString];
//    [stringsAppended firstString:secondString];
    return stringsAppended;
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
