//
//  CustomPickerViewController.h
//  Pickers
//
//  Created by Gerardo Delgado  on 3/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface CustomPickerViewController : UIViewController
<UIPickerViewDelegate,UIPickerViewDataSource> {
	UIPickerView *picker;
	UILabel *winLabel;
	
	NSArray *column1;
	NSArray *column2;
	NSArray *column3;
	NSArray *column4;
	NSArray *column5;
	
	UIButton *button;
	SystemSoundID crunchSoundID;
	SystemSoundID winSoundID;

}

@property (nonatomic,retain) IBOutlet UIPickerView *picker;
@property (nonatomic,retain) IBOutlet UIButton *button;
@property (nonatomic,retain) IBOutlet UILabel *winLabel;
@property (nonatomic,retain) NSArray *column1, *column2,
*column3, *column4, *column5;
@property (nonatomic) SystemSoundID crunchSoundID, winSoundID;

-(IBAction) spin;

@end
