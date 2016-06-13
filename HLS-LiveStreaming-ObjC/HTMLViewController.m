//
//  HTMLViewController.m
//  HLS-LiveStreaming-ObjC
//
//  Created by Alistair Cooper on 6/12/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "HTMLViewController.h"

@interface HTMLViewController ()

@end

@implementation HTMLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webview = [[UIWebView alloc] initWithFrame:CGRectInset(self.view.bounds, 0.0, 25.0)];
    webview.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:webview];
    
    
    NSURL *urlLocal = [[NSBundle mainBundle] URLForResource:@"htmlView" withExtension:@"html"];
    [webview loadRequest:[NSURLRequest requestWithURL:urlLocal]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
