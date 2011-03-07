//
//  SwapViewController.h
//  Swap
//
//  Created by Gerardo Delgado  on 3/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define degreesToRadians(x) (M_PI * (x) / 180.0)

@interface SwapViewController : UIViewController {
	UIView *landscape;
	UIView *portrait;
	
	// Foo
	UIButton *landscapeFooButton;
	UIButton *portraitFooButton;
	
	// Bar
	
	UIButton *landscapeBarButton;
	UIButton *portraitBarButton;

}

@property (retain,nonatomic) IBOutlet UIView *landscape, *portrait;
@property (retain,nonatomic) IBOutlet UIButton *landscapeFooButton, *portraitFooButton, *landscapeBarButton, *portraitBarButton;

-(IBAction) buttonPressed: (id) sender;

@end

