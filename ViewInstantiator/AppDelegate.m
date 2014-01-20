//
//  AppDelegate.m
//  ViewInstantiator
//
//  Created by Christopher Constable on 1/20/14.
//  Copyright (c) 2014 Christopher Constable. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect screenFrame = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:screenFrame];
    
    ViewController *viewController = [[ViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
