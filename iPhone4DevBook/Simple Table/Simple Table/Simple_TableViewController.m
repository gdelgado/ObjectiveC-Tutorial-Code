//
//  Simple_TableViewController.m
//  Simple Table
//
//  Created by Gerardo Delgado  on 3/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Simple_TableViewController.h"

@implementation Simple_TableViewController

@synthesize listData;

- (void)dealloc
{
    [listData release];
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
    NSArray *array = [[NSArray alloc] initWithObjects:@"Sleep", @"Sneezy",
                      @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey",
                      @"Thorin", @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin",
                      @"Fili", @"Kili", @"Oin", @"Gloin", @"Bifur", @"Bombur", nil];
    self.listData = array;
    [array release];
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.listData = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Table View Data Source Methods

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listData count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier]autorelease];
        
    }
    
    UIImage *image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;
    
    UIImage *image2 = [UIImage imageNamed:@"star2.png"];
    cell.imageView.highlightedImage = image2;
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    
    if (row < 7)
        cell.detailTextLabel.text = @"Mr.Disney";
    else
        cell.detailTextLabel.text = @"Mr.Tolkien";
    
    return cell;
}

@end
