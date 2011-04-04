//
//  CheckListController.h
//  Nav
//
//  Created by Gerardo Delgado  on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"


@interface CheckListController : SecondLevelViewController{
    NSArray *list;
    NSIndexPath *lastIndexPath;
    
}

@property (nonatomic, retain) NSArray *list;
@property (nonatomic, retain) NSIndexPath *lastIndexPath;

@end
