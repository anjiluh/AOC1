//
//  AppDelegate.m
//  AOC1
//
//  Created by Angela Ross on 4/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
    printf("The little piggy story...Once Upon a time there were 5 little piggies!");
    //Once Upon a time there were 5 little pig
    float pigTotal = 5.0f;
    int totalAmountPig = (int)pigTotal;
    
    NSLog(@"pigTotal=%f", pigTotal);
    
    //float to int
    NSLog(@"5.000000 is practically %d", totalAmountPig);
    
    int boys = 2.0;
    int girls = 3.0;
    
    NSLog(@"%d were boys", boys);
    NSLog(@"%d were girls", girls);
    
    //declare the entire family plus relatives
    float pigFamily;
    
    pigFamily = 2 + (int)pigTotal;
    
    printf("Including their two relatives brings them to %d", (int)pigFamily);
    
    
    int pigsAtHome = 4;
    //Loop
    if((pigsAtHome) <= 4){
        printf("Someone is at the market!");
    }else{
        printf("Everyone is at home!");
    }
    
    //If the pigs went to a party
    int pigsAtParty = 3;
    
    if(pigsAtParty >= 3)
    {
        NSLog(@"All the boys are at a party!");
    }
    else if (pigsAtParty <= 2);
    {
        NSLog(@"All the girls are at a party!");
    }
  
    //Attempted to join two loops together. But could not get it working. Left them seperate due to zero issues.
    //loop
    for (int x=0; x < 5; x++)
    {
        NSLog(@"%d piggies went to the market!", x);
    }
    
    for(int y=5;y>0; y--)
            
        {
            NSLog(@"%d piggies stayed home!", y);
        }
  
    //broken example of that one, it functions but does not do what i wanted it to. I wanted it to run like the story. but could not figure it out.
    //nexted loop
   for (int x=0; x < 5; x++)
    {
        NSLog(@"%d piggies went to the market!", x);
        for(int y=5;y>0; y--)
            
        {
            NSLog(@"%d piggies stayed home!", y);
        }
    }
    
    //While Loop
    while(pigFamily > 5){
        NSLog(@"Its a great mash, but the %d is a very knit tight group!", pigTotal);
        break;
    }

 
 
   
    
    
    
    
    
    
/*
    NSLog(@"pigTotal=%d", "atMarket=%d", pigTotal, atMarket);
*/
    
    //if (pigTotal == 5)
    //{
    //    NSLog(@"true");
    //}
    
    
    
    
    
    
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end




