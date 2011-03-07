//
//  SwapAppDelegate.h
//  Swap
//
//  Created by Gerardo Delgado  on 3/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwapViewController;

@interface SwapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SwapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwapViewController *viewController;

@end

