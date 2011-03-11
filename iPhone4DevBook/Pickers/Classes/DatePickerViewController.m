//
//  DatePickerViewController.m
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DatePickerViewController.h"


@implementation DatePickerViewController

@synthesize datePicker;

-(IBAction) buttonPressed
{
	
	NSDate *selected = [datePicker date];
	
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
	[dateFormatter setTimeStyle:NSDateFormatterShortStyle];
	NSString *dateString = [dateFormatter stringFromDate:selected];
	
	
	NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is:%@", dateString];
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"Date and Time Selected"
						  message:message
						  delegate:nil
						  cancelButtonTitle:@"Yes, I did."
						  otherButtonTitles:nil];
	[alert show];
	[alert release];
	[dateFormatter release];
	[message release];
	
	
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSDate *now = [[NSDate alloc] init];
	[datePicker setDate:now animated:NO];
	[now release];
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.datePicker = nil;
}


- (void)dealloc {
	[datePicker release];
    [super dealloc];
}


@end
