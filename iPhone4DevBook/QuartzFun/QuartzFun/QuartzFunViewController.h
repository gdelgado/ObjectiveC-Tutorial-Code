//
//  QuartzFunViewController.h
//  QuartzFun
//
//  Created by Gerardo Delgado  on 5/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuartzFunViewController : UIViewController {
    UISegmentedControl *colorControl;
    
}

@property (nonatomic, retain) IBOutlet UISegmentedControl *colorControl;
-(IBAction)changeColor:(id)sender;
-(IBAction)changeShape:(id)sender;

@end
