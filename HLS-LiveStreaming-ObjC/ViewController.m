//
//  ViewController.m
//  HLS-LiveStreaming-ObjC
//
//  Created by Alistair Cooper on 6/12/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self playVideoStream];

}

-(void)viewDidLayoutSubviews {
    
    // use this to resize but make tab bar not visible
//    pvc.fullscreen = true;
    
    // this will resize on rotation
    pvc.view.frame = self.view.bounds;
    

}

- (void)viewWillDisappear:(BOOL)animated
{
    // pause the movie when switching other tab bar vc
    [pvc pause];
}

-(void)playVideoStream
{
    NSURL *streamURL = [[NSURL alloc] initWithString:urlString];
    
    pvc = [[MPMoviePlayerController alloc] initWithContentURL:streamURL];
    
    pvc.controlStyle = MPMovieControlStyleFullscreen;
    
    [pvc.view setFrame: self.view.frame];
    [self.view addSubview:pvc.view];
    [pvc play];
    
}

@end
