//
//  DatePickerViewController.h
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DatePickerViewController : UIViewController {
	UIDatePicker *datePicker;

}

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;

-(IBAction) buttonPressed;

@end
