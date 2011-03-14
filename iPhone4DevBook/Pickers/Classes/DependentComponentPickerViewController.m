//
//  DependentComponentPickerViewController.m
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DependentComponentPickerViewController.h"


@implementation DependentComponentPickerViewController

@synthesize picker;
@synthesize stateZips;
@synthesize states, zips;

-(IBAction) buttonPressed
{
	NSInteger stateRow = [picker selectedRowInComponent:kStateComponent];
	NSInteger zipRow = [picker selectedRowInComponent:kZipComponent];
	
	NSString *state = [self.states objectAtIndex:stateRow];
	NSString *zip = [self.zips objectAtIndex:zipRow];
	
	NSString *title = [[NSString alloc] initWithFormat:
					   @"You selected zip code %@.",zip];
	
	NSString *message = [[NSString alloc] initWithFormat:
						 @"%@ is in %@", zip, state];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title 
						message:message 
						delegate:nil 
						cancelButtonTitle:@"OK" 
						otherButtonTitles:nil];
	[alert show];
	[alert release];
	[title release];
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
	
	NSBundle *bundle = [NSBundle mainBundle];
	NSString *plistPath = [bundle pathForResource:@"statedictionary" ofType:@"plist"];
	
	NSDictionary *dictionary = [[NSDictionary alloc]
	                            initWithContentsOfFile:plistPath];
	self.stateZips = dictionary;
	[dictionary release];
	
	NSArray *components = [self.stateZips allKeys];
	NSArray *sorted = [components sortedArrayUsingSelector:
					   @selector(compare:)];
	
	self.states = sorted;
	
	NSString *selectedState = [self.states objectAtIndex:0];
	NSArray *array = [stateZips objectForKey:selectedState];
	self.zips = array;
	
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
	self.picker = nil;
	self.stateZips = nil;
	self.states = nil;
	self.zips = nil;
}


- (void)dealloc {
	[picker release];
	[stateZips release];
	[states release];
	[zips release];
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 2;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger) component {
	if (component == kStateComponent)
		return [self.states count];
		
		return [self.zips count];
}

#pragma mark Picker Delegate Methods
-(NSString *) pickerView:(UIPickerView *) pickerView
titleForRow:(NSInteger) row forComponent:(NSInteger) component{
	if (component == kStateComponent)
		return [self.states objectAtIndex:row];
	return [self.zips objectAtIndex:row];
}

-(CGFloat) pickerView:(UIPickerView *) pickerView
widthForComponent:(NSInteger) component {
	if (component == kZipComponent)
		return 90;
	return 200;
}

-(void) pickerView:(UIPickerView *) pickerView
didSelectRow:(NSInteger) row inComponent:(NSInteger) component{
	if (component == kStateComponent)
	{
		NSString *selectedState = [self.states objectAtIndex:row];
		NSArray *array = [stateZips objectForKey:selectedState];
		self.zips = array;
		[picker selectRow:row inComponent:kZipComponent animated:YES];
		[picker reloadComponent:kZipComponent];
	}
}
	



@end
