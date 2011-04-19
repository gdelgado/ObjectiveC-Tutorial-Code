//
//  PersistenceViewController.h
//  Persistence
//
//  Created by Gerardo Delgado  on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kFileName @"data.plist"

@interface PersistenceViewController : UIViewController {
    UITextField *field1;
    UITextField *field2;
    UITextField *field3;
    UITextField *field4;

}

@property (nonatomic,retain) IBOutlet UITextField *field1;
@property (nonatomic,retain) IBOutlet UITextField *field2;
@property (nonatomic,retain) IBOutlet UITextField *field3;
@property (nonatomic,retain) IBOutlet UITextField *field4;


-(NSString *)dataFilePath;
-(void)applicationWillResignActive:(NSNotification *)notification;
-(IBAction)textFieldDoneEditing:(id)sender;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;


@end
