//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by Gerardo Delgado  on 3/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController {
	UILabel *statusText;

}

@property (nonatomic,retain) IBOutlet UILabel *statusText;
-(IBAction) buttonPressed: (id) sender;

@end

