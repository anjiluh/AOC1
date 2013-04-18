//
//  ViewController.m
//  Week2AOC1
//
//  Created by Angela Ross on 4/16/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //color background
    self.view.backgroundColor = [UIColor whiteColor];
    
    //title of book
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(60.0f, 10.0f, 200.0f, 20.0f)];
    if (title != nil)
    {
        title.text = @"The Five Love Languages";
        title.textAlignment = NSTextAlignmentCenter;
        title.textColor = [UIColor whiteColor];
        title.backgroundColor = [UIColor blackColor];
    }
    
    [self.view addSubview:title];
    
    //Author
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 100.0f, 20.0f)];
    
    if (author != nil)
    {
        author.backgroundColor = [UIColor redColor];
        author.text = @"Author:";
        author.textAlignment = NSTextAlignmentRight;
        
    }

    [self.view addSubview: author];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
