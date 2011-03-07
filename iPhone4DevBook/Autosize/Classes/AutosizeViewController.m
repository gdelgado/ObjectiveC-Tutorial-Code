//
//  AutosizeViewController.m
//  Autosize
//
//  Created by Gerardo Delgado  on 3/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AutosizeViewController.h"

@implementation AutosizeViewController

@synthesize button1, button2, button3, button4, button5, button6;

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation duration:(NSTimeInterval)duration
{
	if (interfaceOrientation == UIInterfaceOrientationPortrait 
		|| interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)
		
	{
		button1.frame = CGRectMake(20, 20, 125, 125);
		button2.frame = CGRectMake(175, 20, 125, 125);
		button3.frame = CGRectMake(20, 168, 125, 125);
		button4.frame = CGRectMake(175, 168, 125, 125);
		button5.frame = CGRectMake(20, 315, 125, 125);
		button6.frame = CGRectMake(175, 315, 125, 125);
	}
	else {
		button1.frame = CGRectMake(20, 20, 125, 125);
		button2.frame = CGRectMake(20, 155, 125, 125);
		button3.frame = CGRectMake(177, 20, 125, 125);
		button4.frame = CGRectMake(177, 155, 125, 125);
		button5.frame = CGRectMake(328, 20, 125, 125);
		button6.frame = CGRectMake(328, 155, 125, 125);
	}
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    // Return YES for supported orientations
    // return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.button1 = nil;
	self.button2 = nil;
	self.button3 = nil;
	self.button4 = nil;
	self.button5 = nil;
	self.button6 = nil;
	[super viewDidUnload];
	
}


- (void)dealloc {
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[button5 release];
	[button6 release];
    [super dealloc];
}

@end
