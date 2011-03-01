//
//  iPhone_1AppDelegate.h
//  iPhone_1
//
//  Created by Gerardo Delgado  on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iPhone_1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UILabel *display;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UILabel *display;

-(IBAction) click1: (id) sender;
-(IBAction) clickCLR: (id) sender;

@end
