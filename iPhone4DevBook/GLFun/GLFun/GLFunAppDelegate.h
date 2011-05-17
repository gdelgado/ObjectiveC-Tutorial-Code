//
//  GLFunAppDelegate.h
//  GLFun
//
//  Created by Gerardo Delgado  on 5/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GLFunViewController;

@interface GLFunAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet GLFunViewController *viewController;

@end
