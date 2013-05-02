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
    
    //UIButton Login
    login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(login != nil)
    {
        login.frame = CGRectMake(250.0f, 50.0f, 60.0f, 30.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
//        login.tag = LOGIN;
//        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:login];
    }
    
    //Please enter username
    enterUsername = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 95.0f, 300.0f, 100.0f)];
    if (enterUsername !=nil)
    {
        enterUsername.text= @"Please Enter Username";
        enterUsername.backgroundColor = [UIColor darkGrayColor];
        enterUsername.textColor = [UIColor whiteColor];
        enterUsername.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:enterUsername];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
