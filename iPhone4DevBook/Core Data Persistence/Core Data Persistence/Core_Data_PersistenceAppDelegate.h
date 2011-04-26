//
//  Core_Data_PersistenceAppDelegate.h
//  Core Data Persistence
//
//  Created by Gerardo Delgado  on 4/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PersistenceViewController;

@interface Core_Data_PersistenceAppDelegate : NSObject <UIApplicationDelegate> {
    PersistenceViewController *rootController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic,retain) IBOutlet PersistenceViewController *rootController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
