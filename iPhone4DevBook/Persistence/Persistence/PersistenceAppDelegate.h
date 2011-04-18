//
//  PersistenceAppDelegate.h
//  Persistence
//
//  Created by Gerardo Delgado  on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PersistenceViewController;

@interface PersistenceAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PersistenceViewController *viewController;

@end
