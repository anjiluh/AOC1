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
    
    //AuthorsName
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 40.0f, 150.0f, 20.0f)];
    
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor grayColor];
        authorName.text = @"Gary Chapman";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor blackColor];
        
    }
    
    [self.view addSubview: authorName];
    
    //Published
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 100.0f, 20.0f)];
    
    if (published != nil)
    {
        published.backgroundColor = [UIColor blueColor];
        published.text = @"Published:";
        published.textAlignment = NSTextAlignmentRight;
        published.textColor = [UIColor blackColor];
        
    }
    
    [self.view addSubview: published];
    
    //Published Year
    UILabel *publishedYear = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 60.0f, 150.0f, 20.0f)];
    
    if (publishedYear != nil)
    {
        publishedYear.backgroundColor = [UIColor purpleColor];
        publishedYear.text = @"1992";
        publishedYear.textAlignment = NSTextAlignmentLeft;
        publishedYear.textColor = [UIColor whiteColor];
        
    }
    
    [self.view addSubview: publishedYear];
    
    //Summary
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 100.0f, 20.0f)];
    
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor blackColor];
        summary.text = @"Summary:";
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor whiteColor];
        
    }
    
    [self.view addSubview: summary];
    
    //Plot of Book
    UILabel *plot = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 100.0f, 250.0f, 150.0f)];
    
    if (plot != nil)
    {
        plot.backgroundColor = [UIColor blackColor];
        plot.text = @"The author Gary Chapman proposes that there are five love languages. 1. Receiving Gifts 2. Words of Affirmation 3. Acts of Service 4. Quality Time 5. Physical Touch";
        plot.textAlignment = NSTextAlignmentCenter;
        plot.textColor = [UIColor whiteColor];
        plot.numberOfLines = 9;
    }
    
    [self.view addSubview: plot];
    
    //NStrings
    NSString *loveLanguage1 = @"Receiving Gifts";
    NSString *loveLanguage2 = @"Words of Affirmation";
    NSString *loveLanguage3 = @"Acts Of Service";
    NSString *loveLanguage4 = @"Quality Time";
    NSString *loveLanguage5 = @"Physical Touch";
    
    //NSArray
    NSArray *fiveLoveLanguages = [[NSArray alloc] initWithObjects: loveLanguage1, loveLanguage2, loveLanguage3, loveLanguage4, loveLanguage5, nil];
    
    //NSMutableString
    NSMutableString *mutString = [[NSMutableString alloc] init];
    
    for (int i=0; i<5; i++){
        [mutString appendString:[fiveLoveLanguages objectAtIndex:i]];
        
        if (i<3)
        {
            [mutString appendString:@", "];
        }else if (i == 3)
        {
            [mutString appendString:@", and "];
        }else
        {
            [mutString appendString:@"."];
        }
    }
                                  
                                  
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
