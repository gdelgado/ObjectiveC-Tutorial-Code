//
//  SlowWorkerViewController.h
//  SlowWorker
//
//  Created by Gerardo Delgado  on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlowWorkerViewController : UIViewController {
    UIButton *startButton;
    UITextView *resultsTextView;
    UIActivityIndicatorView *spinner;
    
}

@property (retain, nonatomic) IBOutlet UIButton *startButton;
@property (retain, nonatomic) IBOutlet UITextView *resultsTextView;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

-(IBAction)doWork:(id)sender;

@end
