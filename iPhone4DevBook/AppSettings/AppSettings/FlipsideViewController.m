//
//  FlipsideViewController.m
//  AppSettings
//
//  Created by Gerardo Delgado  on 4/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"
#import "MainViewController.h"


@implementation FlipsideViewController

@synthesize delegate=_delegate;
@synthesize engineSwitch;
@synthesize warpFactorSlider;

-(void)refreshFields {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    engineSwitch.on = [[defaults objectForKey:kWarpDriveKey] isEqualToString:@"Engaged"] ? YES : NO;
    warpFactorSlider.value = [defaults floatForKey:kWarpFactorKey];
    [defaults synchronize];
}

-(IBAction)touchEngineSwitch {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *prefValue = engineSwitch.on ? @"Engaged" : @"Disabled";
    [defaults setObject:prefValue forKey:kWarpDriveKey];
    [defaults synchronize];
    
}

-(IBAction)touchWarpSlider {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setFloat:warpFactorSlider.value forKey:kWarpFactorKey];
}

-(void)applicationWillEnterForeground:(NSNotification *)notification {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults synchronize];
    [self refreshFields];
}

- (void)dealloc
{
    [engineSwitch release];
    [warpFactorSlider release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshFields];
   // self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor]; 
    
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter] addObserver:self
    selector:@selector(applicationWillEnterForeground:) 
    name:UIApplicationWillEnterForegroundNotification object:app];
}

- (void)viewDidUnload
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    self.engineSwitch = nil;
    self.warpFactorSlider = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
