//
//  ViewController.m
//  week4AOC1
//
//  Created by Angela Ross on 5/1/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    //backgroundColor
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //username
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 12.0f, 100.0f, 20.0f)];
    if(username != nil)
    {
        username.backgroundColor = [UIColor lightGrayColor];
        username.text = @"Username: ";
    }
    [self.view addSubview:username];
    
    //UITExt field
    usernameInput = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 210.0f, 30.0f)];
    if(usernameInput != nil)
    {
        usernameInput.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameInput];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
