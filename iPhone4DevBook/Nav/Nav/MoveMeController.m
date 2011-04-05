//
//  MoveMeController.m
//  Nav
//
//  Created by Gerardo Delgado  on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MoveMeController.h"


@implementation MoveMeController
@synthesize list;

-(IBAction)toggleMove {
    [self.tableView setEditing:!self.tableView.editing animated:YES];
    
    if (self.tableView.editing)
        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
    else
        [self.navigationItem.rightBarButtonItem setTitle:@"Move"];
}

-(void)viewDidLoad {
    if (list == nil) {
        NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"Eeny",
                                 @"Meeny",@"Miney",@"Moe",@"Catch",@"A",@"Tiger",
                                 @"By",@"The",@"Toe", nil];
        self.list = array;
        [array release];
    }
    
    UIBarButtonItem *moveButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Move"
                                  style:UIBarButtonItemStyleBordered
                                  target:self action:@selector(toggleMove)];
    self.navigationItem.rightBarButtonItem = moveButton;
    [moveButton release];
    [super viewDidLoad];
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
    static NSString *MoveMeCellidentifier = @"MoveMeCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MoveMeCellidentifier];
    
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MoveMeCellidentifier] autorelease];
        cell.showsReorderControl = YES;
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [list objectAtIndex:row];
    
    return cell;
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleNone;
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    NSUInteger fromRow = [fromIndexPath row];
    NSUInteger toRow = [toIndexPath row];
    
    id object = [[list objectAtIndex:fromRow] retain];
    [list removeObjectAtIndex:fromRow];
    [list insertObject:object atIndex:toRow];
    [object release];
}


@end
