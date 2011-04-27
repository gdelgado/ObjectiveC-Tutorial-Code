//
//  State_LabAppDelegate.h
//  State Lab
//
//  Created by Gerardo Delgado  on 4/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class State_LabViewController;

@interface State_LabAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet State_LabViewController *viewController;

@end
