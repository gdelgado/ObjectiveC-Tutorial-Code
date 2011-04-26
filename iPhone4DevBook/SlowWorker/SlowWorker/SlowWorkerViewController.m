//
//  SlowWorkerViewController.m
//  SlowWorker
//
//  Created by Gerardo Delgado  on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SlowWorkerViewController.h"

@implementation SlowWorkerViewController

@synthesize startButton,resultsTextView,spinner;

-(NSString *)fetchSomethingFromServer {
    [NSThread sleepForTimeInterval:1];
    return @"Hi there";
}

-(NSString *)processData:(NSString *)data {
    [NSThread sleepForTimeInterval:2];
    return [data uppercaseString];
}

-(NSString *)calculateFirstResult:(NSString *)data {
    [NSThread sleepForTimeInterval:3];
    return [NSString stringWithFormat:@"Number of chars: %d", [data length]];
}

-(NSString *)calculateSecondResult:(NSString *)data {
    [NSThread sleepForTimeInterval:4];
    return [data stringByReplacingOccurrencesOfString:@"E" withString:@"e"];
}
                                                    

-(IBAction)doWork:(id)sender {
    startButton.enabled = NO;
    startButton.alpha = 0.5;
    [spinner startAnimating];
    NSDate *startTime = [NSDate date];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{ 
    NSString *fetchedData = [self fetchSomethingFromServer];
    NSString *processData = [self processData:fetchedData];
 //   NSString *firstResult = [self calculateFirstResult:processData];
 //   NSString *secondResult = [self calculateSecondResult:processData];
        __block NSString *firstResult;
        __block NSString *secondResult;
        dispatch_group_t group = dispatch_group_create();
        dispatch_group_async(group, dispatch_get_global_queue(0, 0), ^{
            firstResult = [[self calculateFirstResult:processData] retain];
        });
        dispatch_group_async(group, dispatch_get_global_queue(0, 0), ^{
            secondResult = [[self calculateSecondResult:processData] retain];
        });
        dispatch_group_notify(group, dispatch_get_global_queue(0, 0), ^{

    NSString *resultSummary = [NSString stringWithFormat:@"First: [%@]\nSecond: [%@]",firstResult,secondResult];
        dispatch_async(dispatch_get_main_queue(), ^{
            startButton.enabled = YES;
            startButton.alpha = 1.0;
            [spinner stopAnimating];
    resultsTextView.text = resultSummary;
        });
    NSDate *endTime = [NSDate date];
    NSLog(@"Completed in %f seconds", [endTime timeIntervalSinceDate:startTime]);
            [firstResult release];
            [secondResult release];
        });
    });
}

- (void)dealloc
{
    [startButton release];
    [resultsTextView release];
    [spinner release];
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
    self.startButton = nil;
    self.resultsTextView = nil;
    self.spinner = nil;
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
