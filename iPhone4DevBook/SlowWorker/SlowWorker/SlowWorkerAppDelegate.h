//
//  SlowWorkerAppDelegate.h
//  SlowWorker
//
//  Created by Gerardo Delgado  on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SlowWorkerViewController;

@interface SlowWorkerAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SlowWorkerViewController *viewController;

@end
