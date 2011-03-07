//
//  Button_FunViewController.m
//  Button Fun
//
//  Created by Gerardo Delgado  on 3/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Button_FunViewController.h"

@implementation Button_FunViewController

@synthesize statusText;

-(IBAction) buttonPressed: (id) sender
{
	NSString *title = [sender titleForState: UIControlStateNormal];
	NSString *newText = [[NSString alloc] initWithFormat:@"%@ Button Pressed.",title];
	
	statusText.text = newText;
	[newText release];
}
	


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.statusText = nil;
}


- (void)dealloc {
	[statusText release];
    [super dealloc];
}

@end
