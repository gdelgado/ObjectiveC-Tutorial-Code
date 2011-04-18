//
//  FlipsideViewController.h
//  AppSettings
//
//  Created by Gerardo Delgado  on 4/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FlipsideViewControllerDelegate;

@interface FlipsideViewController : UIViewController {
    UISwitch *engineSwitch;
    UISlider *warpFactorSlider;

}

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;
@property (nonatomic,retain) IBOutlet UISwitch *engineSwitch;
@property (nonatomic,retain) IBOutlet UISlider *warpFactorSlider;

           
-(void)refreshFields;
-(IBAction)touchEngineSwitch;
-(IBAction)touchWarpSlider;
- (IBAction)done:(id)sender;

@end


@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end
