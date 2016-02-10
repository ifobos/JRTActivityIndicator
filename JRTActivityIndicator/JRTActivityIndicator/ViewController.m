//
//  ViewController.m
//  JRTActivityIndicator
//
//  Created by Juan Garcia on 1/20/16.
//  Copyright © 2016 jerti. All rights reserved.
//

#import "JRTActivityIndicator.h"

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *exampleView;

@end

@implementation ViewController

- (IBAction)show:(id)sender {
    JRTActivityIndicator *activityIndicator = [JRTActivityIndicator new];
    [activityIndicator show];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void) {
        [activityIndicator hide];
    });
}

- (IBAction)showWithMessage:(id)sender {
    JRTActivityIndicator *activityIndicator = [JRTActivityIndicator new];
    [activityIndicator showWithMessage:@"Example"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void) {
        [activityIndicator hide];
    });
}

- (IBAction)showInView:(id)sender {
    JRTActivityIndicator *activityIndicator = [JRTActivityIndicator new];
    [activityIndicator showInView:self.exampleView animated:YES network:NO message:@"Example"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void) {
        [activityIndicator hide];
    });
}

@end
