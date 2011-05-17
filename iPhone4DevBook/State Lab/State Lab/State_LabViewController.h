//
//  State_LabViewController.h
//  State Lab
//
//  Created by Gerardo Delgado  on 4/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface State_LabViewController : UIViewController {
    UILabel *label;    
    BOOL animate;
    UIImage *smiley;
    UIImageView *smileyView;
    UISegmentedControl *segmentedControl;
    
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UIImage *smiley;
@property (nonatomic, retain) UIImageView *smileyView;
@property (nonatomic, retain) UISegmentedControl *segmentedControl;

@end
