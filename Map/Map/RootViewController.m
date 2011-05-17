//
//  RootViewController.m
//  Map
//
//  Created by Gerardo Delgado  on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "MainView.h"
#import "TableViewController.h"


@implementation RootViewController

@synthesize tableViewController, mainView, rootviewController;

-(IBAction)viewTableView:(id)sender {
    
    
    TableViewController *tableController = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    self.tableViewController = tableController;
    [self.view insertSubview:tableController.view atIndex:1];
    NSLog(@"View Table Button tapped!");
    [tableController release];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
   MainView *mainController = [[MainView alloc] initWithNibName:@"MainView" bundle:nil];
    self.mainView = mainController;
    [self.view insertSubview:mainController.view atIndex:0];
    [mainController release];
    
    [super viewDidLoad];
  
   
   
    /*
    TableViewController *tableController = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    self.tableViewController = tableController;
    [self.view insertSubview:tableController.view atIndex:0];
    [tableViewController release];
     */

    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
