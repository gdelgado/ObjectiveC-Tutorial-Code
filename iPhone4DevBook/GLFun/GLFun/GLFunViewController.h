//
//  GLFunViewController.h
//  GLFun
//
//  Created by Gerardo Delgado  on 5/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLFunViewController : UIViewController {
    UISegmentedControl *colorControl;
    
}
@property (nonatomic, retain) IBOutlet UISegmentedControl *colorControl;

-(IBAction)changeColor:(id)sender;
-(IBAction)changeShape:(id)sender;

@end
