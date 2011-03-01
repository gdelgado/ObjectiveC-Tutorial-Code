//
//  Fraction_CalculatorAppDelegate.h
//  Fraction_Calculator
//
//  Created by Gerardo Delgado  on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Fraction_CalculatorViewController;

@interface Fraction_CalculatorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Fraction_CalculatorViewController *viewController;

@end
