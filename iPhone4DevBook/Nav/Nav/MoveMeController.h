//
//  MoveMeController.h
//  Nav
//
//  Created by Gerardo Delgado  on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIkit.h>
#import "SecondLevelViewController.h"


@interface MoveMeController : SecondLevelViewController {
    NSMutableArray *list;
    
}
@property (nonatomic,retain) NSMutableArray *list;
-(IBAction)toggleMove;

@end
