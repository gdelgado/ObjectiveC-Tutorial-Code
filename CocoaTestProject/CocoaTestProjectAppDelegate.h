//
//  CocoaTestProjectAppDelegate.h
//  CocoaTestProject
//
//  Created by Gerardo Delgado on 10/12/10.
//  Copyright 2010 Arch Insurance Group. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CocoaTestProjectAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
