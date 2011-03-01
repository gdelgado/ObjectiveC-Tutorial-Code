//
//  Fraction_CalculatorViewController.h
//  Fraction_Calculator
//
//  Created by Gerardo Delgado  on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
#import "Fraction.h"

@interface Fraction_CalculatorViewController : UIViewController {
    UILabel *display;
    char op;
    int currentNumber;
    NSMutableString *displayString;
    BOOL firstOperand, isNumerator;
    Calculator *myCalculator;
    
}
@property (nonatomic,retain) IBOutlet UILabel *display;
@property (nonatomic,retain) NSMutableString *displayString;

-(void) processDigit: (int) digit;
-(void) processOp: (char) theOp;
-(void) storeFracPart;

// Numeric Keys

-(IBAction) clickDigit: (id) sender;

// Arithmetic Operation Keys

-(IBAction) clickPlus: (id) sender;
-(IBAction) clickMinus: (id) sender;
-(IBAction) clickMultiply: (id) sender;
-(IBAction) clickDivide: (id) sender;

// Misc. Keys

-(IBAction) clickOver: (id) sender;
-(IBAction) clickEquals: (id) sender;
-(IBAction) clickClear: (id) sender;
-(IBAction) clickConvert: (id) sender;

@end
