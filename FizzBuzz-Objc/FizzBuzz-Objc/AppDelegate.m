//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Insert code here
    
    for (int i = 1; i <= 100; i++)
    {
        BOOL buzz = [self isBuzzed:i];
        BOOL fizz = [self isFizzed:i];
        
        if (buzz && !fizz)
        {
            NSLog(@"\nBuzz");
        }
        else if (fizz && !buzz)
        {
            NSLog(@"\nFizz");
        }
        else if (fizz && buzz)
        {
            NSLog(@"\nFizzBuzz");
        }
        else
        {
            NSLog(@"\n%d", i);
        }
    }
    
    
    return YES;
}

// Method Statements


-(BOOL) isBuzzed:(NSInteger)number
{
   
    BOOL isBuzzed;
    if (number % 3 == 0)
    {
        isBuzzed = YES;
    }
    else if ([[NSString stringWithFormat:@"%ld", number] containsString:@"3"])
    {
        isBuzzed = YES;
    }

    else
    {
        isBuzzed = NO;
    }
    
    return isBuzzed;
}


-(BOOL) isFizzed:(NSInteger)number
{
    BOOL isFizzed;
    if (number % 5 == 0)
    {
        isFizzed = YES;
    }
    else if ([[NSString stringWithFormat:@"%ld", number] containsString:@"5"])
    {
        isFizzed = NO;
    }
    else
    {
        isFizzed = NO;
    }
    
    return isFizzed;
}

@end
