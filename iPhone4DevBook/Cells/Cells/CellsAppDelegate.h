//
//  CellsAppDelegate.h
//  Cells
//
//  Created by Gerardo Delgado  on 3/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CellsViewController;

@interface CellsAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CellsViewController *viewController;

@end
