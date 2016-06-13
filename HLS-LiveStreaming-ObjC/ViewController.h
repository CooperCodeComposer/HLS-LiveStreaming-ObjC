//
//  ViewController.h
//  HLS-LiveStreaming-ObjC
//
//  Created by Alistair Cooper on 6/12/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#define urlString @"https://s3-us-west-2.amazonaws.com/hlsappdemo/TheAnimalVideo/theanimal.m3u8"

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
{
    MPMoviePlayerController *pvc;
}


@end

