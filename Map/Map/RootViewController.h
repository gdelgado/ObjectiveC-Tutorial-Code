//
//  RootViewController.h
//  Map
//
//  Created by Gerardo Delgado  on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainView, TableViewController;


@interface RootViewController : UIViewController {
    MainView *mainView;
    TableViewController *tableViewController;
    UILabel *label;
    
    
}

@property (nonatomic, retain) IBOutlet MainView *mainView;
@property (nonatomic, retain) IBOutlet TableViewController *tableViewController;
@property (nonatomic, retain) IBOutlet RootViewController *rootviewController;
-(IBAction)viewTableView:(id)sender;

@end
