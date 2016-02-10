//Copyright (c) 2015 Juan Carlos Garcia Alfaro. All rights reserved.
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

@import UIKit;

#pragma mark - Protocol

/*!
 Protocol that should conform the custom view to be presented as activity indicator
 */
@protocol JRTActivityIndicatorViewProtocol

/*!
 Method to get the text that appears within the activity indicator.
 
 @param message It contains the short text that explains the activity indicator, 
                by default this is Loading.
 */
- (void)setMessage:(NSString *)message;

@end

/*!
 JRTActivityIndicator, is a class that allows you to present a view that is an 
 activity indicator.
 */
@interface JRTActivityIndicator : NSObject

#pragma mark - Configuration

/*!
 Method used to set the name of the nib that contains the view that will be presented
 as activity indicator, the kind of sight inside the nib must conform to 
 JRTActivityIndicatorViewProtocol.
 
 @param nibName the name of the nib containing view will be presented as activity 
                indicator, the nib should be in the main bundle.
 */
+ (void)setViewNibName:(NSString *)nibName;

#pragma mark - Use

/*!
 Presents the activity indicator with the default settings, this is animated in full 
 screen with default message and activating network activity.
 */
- (void)show;

/*!
 Presents animated the activity indicator in full screen with custom message and
 activating network activity.

 
 @param message Text to be submitted in the activity indicator explaining the action
                that is taking place.
 */
- (void)showWithMessage:(NSString *)message;

/*!
 Presents the activity indicator with custom parameters.
 
 @param view     view containing the activity indicator.
 @param animated Boolean that determines whether the activity indicator is presented
                 animated.
 @param network  Boolean that determines whether the network activity indicator will 
                 be activated.
 @param message  Text to be submitted in the activity indicator explaining the action
                 that is taking place.
 */
- (void)showInView:(UIView *)view animated:(BOOL)animated network:(BOOL)network message:(NSString *)message;

/*!
 This method removes the indicator activity presented.
 */
- (void)hide;

@end
