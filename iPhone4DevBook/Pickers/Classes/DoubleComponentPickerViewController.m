//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"


@implementation DoubleComponentPickerViewController
@synthesize doublePicker;
@synthesize fillingTypes, breadTypes;
 // @synthesize dressingTypes; // synthesize method for the 3rd array.


-(IBAction) buttonPressed
{
	NSInteger fillingRow = [doublePicker selectedRowInComponent:kFillingComponent];
	NSInteger breadRow = [doublePicker selectedRowInComponent:kBreadComponent];
//    NSInteger dressingRow = [doublePicker selectedRowInComponent:kDressingComponent]; 
	
	NSString *bread = [breadTypes objectAtIndex:breadRow];
	NSString *filling = [fillingTypes objectAtIndex:fillingRow];
//	NSString *dressing =[dressingTypes objectAtIndex:dressingRow];
	
/*  NSString *message = [[NSString alloc] initWithFormat:
						 @"Your %@ on %@ bread with %@ dressing will be right up.", filling,bread,dressing];
*/
	NSString *message = [[NSString alloc] initWithFormat:
	                    @"Your %@ on %@ bread will be right up.", filling,bread];
	 
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
						@"Thank you for your order."
						message:message 
						delegate:nil 
						cancelButtonTitle:@"Great!" 
						otherButtonTitles:nil];
	
	[alert show];
	[alert release];
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
	NSArray *fillingArray = [[NSArray alloc] initWithObjects:@"Ham",
							 @"Turkey",@"Peanut Butter",@"Tuna Salad",
							 @"Nutella",@"Roast Beef",@"Vegemite",nil];
	self.fillingTypes = fillingArray;
	[fillingArray release];
	
	NSArray *breadArray =[[NSArray alloc] initWithObjects:@"White",
						  @"Whole Wheat",@"Rye",@"Sourdough",@"Seven Grain",nil];
	
	self.breadTypes = breadArray;
	[breadArray release];
	
/*	NSArray *dressingArray = [[NSArray alloc] initWithObjects:@"Mayo",
							 @"Mustard",@"Ketchup",nil];
	self.dressingTypes = dressingArray;
	[dressingArray release];
 */
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
	
	self.doublePicker = nil;
	self.fillingTypes = nil;
	self.breadTypes = nil;
//	self.dressingTypes = nil;
	
}


- (void)dealloc {
	[doublePicker release];
	[fillingTypes release];
	[breadTypes release];
//	[dressingTypes release];
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 2;
//	return 3;
}

-(NSInteger) pickerView:(UIPickerView *) pickerView
numberOfRowsInComponent:(NSInteger) component {
	if (component == kBreadComponent)
		return [self.breadTypes count];
	
	return [self.fillingTypes count];
	
/*	else  if (component == kFillingComponent)
		return [self.fillingTypes count];
	
	else if (component == kDressingComponent)
	
		return [self.dressingTypes count];
	else 
		
		return 0;
 */
		
}

#pragma mark Picker Delegate Methods
-(NSString *) pickerView:(UIPickerView *) pickerView
titleForRow:(NSInteger) row forComponent:(NSInteger) component{
	if (component == kBreadComponent)
		return [self.breadTypes objectAtIndex:row];
	
	return [self.fillingTypes objectAtIndex:row];
	
/*	else if (component == kFillingComponent)	
	return [self.fillingTypes objectAtIndex:row];
	
	else if (component == kDressingComponent)
		return [self.dressingTypes objectAtIndex:row];
	else 
		return 0;
*/	
}

@end
