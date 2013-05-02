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
        login.tag = 0;
        login.frame = CGRectMake(250.0f, 50.0f, 60.0f, 30.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
       
        [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
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
    
    //show date button
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(showDate != nil)
    {
        showDate.frame = CGRectMake(10.0f, 250.0f, 100.0f, 50.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        showDate.tag = 1;
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDate];
    }

    [super viewDidLoad];
    
/*    -[(BOOL)textFieldShouldReturn:(UITextField *)textfield {
        if(textfield == usernameInput){
            [textField resignFirstResponder];
        }
    }
 */   
    - (void)onClick:(UIButton*)button
    
    ////Button Actions
{
 if(button.tag == 0)
 {
     NSString *usernameText = usernameInput.text;
//     [self textFieldShouldReturn:usernameInput];
     
        if (usernameText.length == 0)
        {
            statusLabel.text = @"Username cannot be empty.";
            statusLabel.textColor = [UIColor redColor];
        }
     else
     {
         NSString *usernameText = [[NSString alloc] initWithString:usernameInput.text];
         statusLabel.text = [NSString stringWithFormat:@"User: '%d' has been logged in", usernameText];
     }
     
     //date actions
     else if (button.tag == 1)
     {
         NSDate *date = [NSDate date];
         NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
         if (dateFormatter != nil)
         {
             [dateFormatter setDateFormat:@"MMMM d, yyyy h:mm:s:a zzzz"];
             NSString* dateLabel = [dateFormatter stringFromDate:date];
             UIAlertView *dateAlertView = [[UIAlertView alloc] initWithTitle:@"Current Date" message:dateLabel delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
             if(dateAlertView != nil)
             {
                 [dateAlertView show];
             }
         }
     }
 }
}
    
    


	// Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end