//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent 0
#define kBreadComponent 1
// #define kDressingComponent 2 // Definiton for a 3rd row.


@interface DoubleComponentPickerViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource> {
	UIPickerView *doublePicker;
	NSArray *fillingTypes;
	NSArray *breadTypes;
//	NSArray *dressingTypes; // Creates the array
	

}

@property (nonatomic, retain) IBOutlet UIPickerView *doublePicker;
@property (nonatomic, retain) NSArray *fillingTypes, *breadTypes;
// @property (nonatomic, retain) NSArray *dressingTypes; // property for the 3rd array.

-(IBAction) buttonPressed; 

@end
