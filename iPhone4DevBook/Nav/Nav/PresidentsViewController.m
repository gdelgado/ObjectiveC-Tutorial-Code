//
//  PresidentsViewController.m
//  Nav
//
//  Created by Gerardo Delgado  on 4/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PresidentsViewController.h"
#import "PresidentDetailController.h"
#import "President.h"


@implementation PresidentsViewController
@synthesize list;

-(void)viewDidLoad {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Presidents" ofType:@"plist"];
    
    NSData *data;
    NSKeyedUnarchiver *unarchiver;
    
    data = [[NSData alloc] initWithContentsOfFile:path];
    unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    NSMutableArray *array = [unarchiver decodeObjectForKey:@"Presidents"];
    self.list = array;
    [unarchiver finishDecoding];
    [unarchiver release];
    [data release];
    
    [super viewDidLoad];
                             
                            
}

-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
    [super viewWillAppear:animated];
}

-(void)dealloc {
    [list release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [list count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *PresidentListCellIdentifier = @"PresidentListCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:PresidentListCellIdentifier];
    
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:PresidentListCellIdentifier]autorelease];
        
    }
    NSUInteger row = [indexPath row];
    President *thePres = [self.list objectAtIndex:row];
    cell.textLabel.text = thePres.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@-%@",thePres.fromYear, thePres.toYear];
    return cell;
}

#pragma mark -
#pragma mark Table Delegate Methods
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger row = [indexPath row];
    President *prez = [self.list objectAtIndex:row];
    
    PresidentDetailController *childController = [[PresidentDetailController alloc]
                                                  initWithStyle:UITableViewStyleGrouped];
    
    childController.title = prez.name;
    childController.president = prez;
    
    [self.navigationController pushViewController:childController animated:YES];
    
    [childController release];
    
    
}

@end
