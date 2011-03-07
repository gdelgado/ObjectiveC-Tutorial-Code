//
//  Control_FunAppDelegate.h
//  Control Fun
//
//  Created by Gerardo Delgado  on 3/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Control_FunViewController;

@interface Control_FunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Control_FunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Control_FunViewController *viewController;

@end

