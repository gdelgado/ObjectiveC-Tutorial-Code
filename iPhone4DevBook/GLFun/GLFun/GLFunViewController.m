//
//  GLFunViewController.m
//  GLFun
//
//  Created by Gerardo Delgado  on 5/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GLFunViewController.h"
#import "GLFunView.h"
#import "Constants.h"

@implementation GLFunViewController

@synthesize colorControl;

-(IBAction)changeColor:(id)sender {
    UISegmentedControl *control = sender;
    NSInteger index = [control selectedSegmentIndex];
    
    GLFunView *glView = (GLFunView *)self.view;
    
    switch (index) {
        case kRedColorTab:
            glView.currentColor = [UIColor redColor];
            glView.useRandomColor = NO;
            break;
        case kBlueColorTab:
            glView.currentColor = [UIColor blueColor];
            glView.useRandomColor = NO;
            break;
        case kYellowColorTab:
            glView.currentColor = [UIColor yellowColor];
            glView.useRandomColor = NO;
            break;
        case kGreenColorTab:
            glView.currentColor = [UIColor greenColor];
            glView.useRandomColor = NO;
            break;
        case kRandomColorTab: 
            glView.useRandomColor = YES;
            break;
            default:
            break;
    }
}

-(IBAction)changeShape:(id)sender {
    UISegmentedControl *control = sender;
    [(GLFunView *)self.view setShapeType:[control selectedSegmentIndex]];
    if ([control selectedSegmentIndex] == kImageShape)
        [colorControl setHidden:YES];
        else
            [colorControl setHidden:NO];
}


- (void)dealloc
{
    [colorControl release];
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
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    self.colorControl = nil;
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
