//
//  AppDelegate.h
//  HLS-LiveStreaming-ObjC
//
//  Created by Alistair Cooper on 6/12/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "HTMLViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tab;
@property (strong, nonatomic) UITabBar *tabBar;


@property (strong, nonatomic) ViewController *vc1;
@property (strong, nonatomic) HTMLViewController *vc2;


@end

