//
//  PresidentDetailController.h
//  Nav
//
//  Created by Gerardo Delgado  on 4/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class President;
#define kNumberofEditableRows 4
#define kNameRowIndex 0
#define kFromYearRowIndex 1
#define kToYearRowIndex 2
#define kPartyIndex 3

#define KLabelTag 4096


@interface PresidentDetailController : UITableViewController <UITextFieldDelegate> {
    President *president;
    NSArray *fieldLabels;
    NSMutableDictionary *tempValues;
    UITextField *textFieldBeingEdited;
    
}
@property (nonatomic,retain) President *president;
@property (nonatomic,retain) NSArray *fieldLabels;
@property (nonatomic,retain) NSMutableDictionary *tempValues;
@property (nonatomic,retain) UITextField *textFieldBeingEdited;

-(IBAction)cancel:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)textFieldDone:(id)sender;

@end
