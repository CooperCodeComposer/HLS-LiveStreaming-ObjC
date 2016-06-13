//
//  AppDelegate.m
//  HLS-LiveStreaming-ObjC
//
//  Created by Alistair Cooper on 6/12/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // setup view controllers
    
    self.vc1 = [[ViewController alloc] initWithNibName:nil bundle:nil];
    self.vc1.title = @"MPMoviePlayer";
 //   self.vc1.view.backgroundColor = [UIColor whiteColor];
    
    self.vc2 = [[HTMLViewController alloc] initWithNibName:nil bundle:nil];
    self.vc2.title = @"HTML5Video";
    self.vc1.view.backgroundColor = [UIColor blackColor];

    
    
    // setup tab bar
    self.tab = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
    
    // style the tab bar
    self.tabBar = self.tab.tabBar;
    self.tabBar.barStyle = UIBarStyleBlack;
    
    // add vc1 and vc2 (
    self.tab.viewControllers = @[self.vc1, self.vc2];
    
    self.window.rootViewController = self.tab;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
