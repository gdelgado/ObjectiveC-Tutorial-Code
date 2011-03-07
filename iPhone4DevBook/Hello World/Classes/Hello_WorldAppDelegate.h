//
//  Hello_WorldAppDelegate.h
//  Hello World
//
//  Created by Gerardo Delgado  on 3/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello_WorldViewController;

@interface Hello_WorldAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hello_WorldViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hello_WorldViewController *viewController;

@end

