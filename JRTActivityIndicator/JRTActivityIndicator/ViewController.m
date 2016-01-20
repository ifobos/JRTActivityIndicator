//
//  ViewController.m
//  JRTActivityIndicator
//
//  Created by Juan Garcia on 1/20/16.
//  Copyright © 2016 jerti. All rights reserved.
//

#import "ViewController.h"
#import "JRTActivityIndicator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *exampleView;
@end

@implementation ViewController

- (IBAction)show:(id)sender
{
    JRTActivityIndicator *ai = [JRTActivityIndicator new];
    [ai show];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void)
                   {
                       [ai hide];
                   });
}

- (IBAction)showNoAnimated:(id)sender
{
    JRTActivityIndicator *ai = [JRTActivityIndicator new];
    [ai showAnimated:NO];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void)
                   {
                       [ai hide];
                   });
    
}

- (IBAction)showWithMessage:(id)sender
{
    JRTActivityIndicator *ai = [JRTActivityIndicator new];
    [ai showAnimated:YES message:@"Example"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void)
                   {
                       [ai hide];
                   });
}

- (IBAction)showInView:(id)sender
{
    JRTActivityIndicator *ai = [JRTActivityIndicator new];
    [ai showInView:self.exampleView animated:YES network:NO message:@"Example"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0e9 * 5), dispatch_get_main_queue(), ^(void)
                   {
                       [ai hide];
                   });
 
}


@end
