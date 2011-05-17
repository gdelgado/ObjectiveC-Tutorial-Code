//
//  QuartzFunAppDelegate.h
//  QuartzFun
//
//  Created by Gerardo Delgado  on 5/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuartzFunViewController;

@interface QuartzFunAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet QuartzFunViewController *viewController;

@end
