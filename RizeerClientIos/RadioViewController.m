//
//  RadioViewController.m
//  RizeerClientIos
//
//  Created by Youssef Amri on 06/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import "RadioViewController.h"
#import "AFNetworking.h"
#import "UIWebView+AFNetworking.h"

@interface RadioViewController ()

@end

@implementation RadioViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)playRadio:(id)sender {
    NSString *streamRadio = @"http://cache.yacast.fr/V4/rmc/rmc.m3u";
    NSURL *fluxRadio = [NSURL URLWithString:streamRadio];
    NSURLRequest *radioRequest = [NSURLRequest requestWithURL:fluxRadio];
    [radiowebview loadRequest:radioRequest];
}

@end
