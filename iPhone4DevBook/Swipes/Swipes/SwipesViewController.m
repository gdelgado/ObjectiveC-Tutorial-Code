//
//  SwipesViewController.m
//  Swipes
//
//  Created by Gerardo Delgado  on 5/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SwipesViewController.h"

#define kMinimumGestureLength 25
#define kMaximumVariance 5


@implementation SwipesViewController
@synthesize label;


-(void)eraseText {
    label.text = @"";
}

- (void)dealloc
{
    [label release];
    [super dealloc];
}

-(NSString *)descriptionForTouchCount:(NSUInteger)touchCount {
    if (touchCount == 2)
        return @"Double ";
    else if (touchCount == 3)
        return @"Triple ";
    else if (touchCount == 4)
        return @"Quadruple ";
    else if (touchCount == 5)
        return @"Quintuple ";
    else
        return @"";
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
    UISwipeGestureRecognizer *vertical;
    
    for (NSUInteger touchCount = 1; touchCount <= 5; touchCount++) {
        vertical = [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportVerticalSwipe:)]
                    autorelease];
        vertical.direction = UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
        vertical.numberOfTouchesRequired = touchCount;
        [self.view addGestureRecognizer:vertical];
        
        UISwipeGestureRecognizer *horizontal;
        horizontal = [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportHorizontalSwipe:)]
                      autorelease];
        horizontal.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
        horizontal.numberOfTouchesRequired = touchCount;
        [self.view addGestureRecognizer:horizontal];
                       
    }
    

}


- (void)viewDidUnload
{
    self.label = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -

-(void)reportHorizontalSwipe:(UIGestureRecognizer *)recognizer {
    label.text = [NSString stringWithFormat:@"%@Horizontal swipe detected", [self descriptionForTouchCount:[recognizer numberOfTouches]]];
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

-(void)reportVerticalSwipe:(UIGestureRecognizer *)recognizer {
    label.text = [NSString stringWithFormat:@"%@Vertical swipe detected", [self descriptionForTouchCount:[recognizer numberOfTouches]]];
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

@end
