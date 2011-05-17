//
//  MapAppDelegate.h
//  Map
//
//  Created by Gerardo Delgado  on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface MapAppDelegate : NSObject <UIApplicationDelegate> {
    

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet RootViewController *rootViewController;



@end
