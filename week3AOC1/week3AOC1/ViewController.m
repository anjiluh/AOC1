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
    
    return result;
}

//bool function named compare

- (BOOL)compare:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    NSLog(@"Does %d and %d equal?", firstInt, secondInt);
    
    if(firstInt ==secondInt)
    {
        NSString *equal = [[NSString alloc] initWithFormat:@"These numbers %d and %d are equal.", firstInt, secondInt];
        [self displayAlertWithString:equal];
        NSLog(@"Yes");
        return YES;
    }else
    {
        NSString *notEqual = [[NSString alloc] initWithFormat:@"These numbers %d and %d are not equal.", firstInt, secondInt];
        
    [self displayAlertWithString:notEqual];
        NSLog(@"No");
        return NO;
    }
}

//append function

-  (NSString *)append:(NSString*)firstString secondString:(NSString *)secondString
{
    NSMutableString *stringsAppended = [[NSMutableString alloc] init];
                                        
    [stringsAppended appendString:firstString];
    [stringsAppended appendString:secondString];
                                        
    return stringsAppended;
}

//displayAlertWithString function
                                        
-(void)displayAlertWithString:(NSString *)string
    {
        UIAlertView *displayAlert = [[UIAlertView alloc] initWithTitle:@"Hold Up" message:string delegate:nil cancelButtonTitle:@"Word bro." otherButtonTitles: nil];
        
        if (displayAlert !=nil)
        {
            [displayAlert show];
        }
    }

- (void)viewDidLoad
{
    
    //Call Functions
    [self add:10 secondInt:1];
    [self compare:1 secondInt:2];
    [self append:@"Append first string to " secondString:@"second string."];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
