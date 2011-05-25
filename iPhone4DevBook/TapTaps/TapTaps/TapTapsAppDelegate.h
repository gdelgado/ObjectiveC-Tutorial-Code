//
//  TapTapsAppDelegate.h
//  TapTaps
//
//  Created by Gerardo Delgado  on 5/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TapTapsViewController;

@interface TapTapsAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TapTapsViewController *viewController;

@end
