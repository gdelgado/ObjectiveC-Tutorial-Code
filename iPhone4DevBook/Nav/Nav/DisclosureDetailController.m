//
//  DisclosureDetailController.m
//  Nav
//
//  Created by Gerardo Delgado  on 3/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DisclosureDetailController.h"


@implementation DisclosureDetailController
@synthesize label;
@synthesize message;

-(void)viewWillAppear:(BOOL)animated {
    label.text = message;
    [super viewWillAppear:animated];
}

-(void)viewDidUnload {
    self.label = nil;
    self.message = nil;
    [super viewDidUnload];
}

-(void)dealloc {
    [label release];
    [message release];
    [super dealloc];
}

@end
