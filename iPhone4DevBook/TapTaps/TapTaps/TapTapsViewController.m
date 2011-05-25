//
//  TapTapsViewController.m
//  TapTaps
//
//  Created by Gerardo Delgado  on 5/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TapTapsViewController.h"

@implementation TapTapsViewController

@synthesize singleLabel;
@synthesize doubleLabel;
@synthesize tripleLabel;
@synthesize quadrupleLabel;

-(void)tap1 {
    singleLabel.text = @"Single Tap Detected";
    [self performSelector:@selector(eraseMe:) withObject:singleLabel afterDelay:1.6f];
}

-(void)tap2 {
    doubleLabel.text = @"Double Tap Detected";
    [self performSelector:@selector(eraseMe:) withObject:doubleLabel afterDelay:1.6f];
}

-(void)tap3 {
    tripleLabel.text = @"Triple Tap Detected";
    [self performSelector:@selector(eraseMe:) withObject:tripleLabel afterDelay:1.6f];
}

-(void)tap4 {
    quadrupleLabel.text = @"Quadruple Tap Detected";
    [self performSelector:@selector(eraseMe:) withObject:quadrupleLabel afterDelay:1.6f];
}

-(void)eraseMe:(UITextField *)textField {
    textField.text = @"";
}

- (void)dealloc
{
    [singleLabel release];
    [doubleLabel release];
    [tripleLabel release];
    [quadrupleLabel release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTap = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap1)]
                                         autorelease];
    singleTap.numberOfTapsRequired = 1;
    singleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:singleTap];
    
    UITapGestureRecognizer *doubleTap = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap2)]
                                         autorelease];
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:doubleTap];
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    UITapGestureRecognizer *tripleTap = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap3)]
                                         autorelease];
    tripleTap.numberOfTapsRequired = 3;
    tripleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:tripleTap];
    [doubleTap requireGestureRecognizerToFail:tripleTap];
    
    UITapGestureRecognizer *quadrupleTap = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap4)] autorelease];
    quadrupleTap.numberOfTapsRequired = 4;
    quadrupleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:quadrupleTap];
    [tripleTap requireGestureRecognizerToFail:quadrupleTap];
                                          
}


- (void)viewDidUnload
{
    self.singleLabel = nil;
    self.doubleLabel = nil;
    self.tripleLabel = nil;
    self.quadrupleLabel = nil;
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
