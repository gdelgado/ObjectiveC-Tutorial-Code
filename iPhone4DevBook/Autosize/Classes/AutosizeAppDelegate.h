//
//  AutosizeAppDelegate.h
//  Autosize
//
//  Created by Gerardo Delgado  on 3/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AutosizeViewController;

@interface AutosizeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AutosizeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AutosizeViewController *viewController;

@end

