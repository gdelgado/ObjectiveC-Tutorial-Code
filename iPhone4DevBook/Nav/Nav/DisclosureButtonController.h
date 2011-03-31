//
//  DisclosureButtonController.h
//  Nav
//
//  Created by Gerardo Delgado  on 3/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"
@class DisclosureDetailController;


@interface DisclosureButtonController : SecondLevelViewController {
    NSArray *list;
    DisclosureDetailController *childcontroller;
    
}
@property (nonatomic,retain) NSArray *list;

@end
