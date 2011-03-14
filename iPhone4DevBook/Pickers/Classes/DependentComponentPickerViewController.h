//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0
#define kZipComponent 1


@interface DependentComponentPickerViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource> {
	UIPickerView *picker;
	
	NSDictionary *stateZips;
	NSArray *states;
	NSArray *zips;

}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) NSDictionary *stateZips;
@property (nonatomic, retain) NSArray *states, *zips;

-(IBAction) buttonPressed;

@end
