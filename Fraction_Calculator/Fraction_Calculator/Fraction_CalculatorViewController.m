//
//  Fraction_CalculatorViewController.m
//  Fraction_Calculator
//
//  Created by Gerardo Delgado  on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Fraction_CalculatorViewController.h"

@implementation Fraction_CalculatorViewController

@synthesize display,displayString;

- (void) viewDidLoad
{
    //Override point for customization after application launch
    
    firstOperand = YES;
    isNumerator = YES;
    self.displayString = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
    
}
- (void) processDigit: (int) digit
{
    currentNumber = currentNumber * 10 + digit;
    
    [displayString appendString: [NSString stringWithFormat: @"%i", digit]];
    [display setText: displayString];
}

- (IBAction) clickDigit:(id)sender
{
    int digit = [sender tag];
    
    [self processDigit:digit];
    
   
}

- (void) processOp:(char)theOp
{
    NSString *opStr;
    
    op = theOp;
    
    switch (theOp)
    {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" x ";
            break;
        case '/':
            opStr = @" % ";
            break;
    }
    
    [self storeFracPart];
    firstOperand = NO;
    isNumerator = YES;
    
    [displayString appendString: opStr];
    [display setText: displayString];
}

- (void) storeFracPart
{
    if (firstOperand)
    {
        if (isNumerator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1; // e.g. 3 * 4/5 =
        }
        else 
            myCalculator.operand1.denominator = currentNumber;
    }
    else if (isNumerator) {
        myCalculator.operand1.numerator = currentNumber;
        myCalculator.operand1.denominator = 1; // e.g. 3/2 * 4 =
    }
    else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    currentNumber = 0;
}
- (IBAction) clickOver:(id)sender
{
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString: @"/"];
    [display setText: displayString];
    
}
// Arithmetic Operation keys

- (IBAction) clickPlus:(id)sender
{
    [self processOp: '+'];
}
- (IBAction) clickMinus:(id)sender
{
    [self processOp: '-'];
}
- (IBAction) clickMultiply:(id)sender
{
    [self processOp: '*'];
}
- (IBAction) clickDivide:(id)sender
{
    [self processOp: '/'];
}
// Misc. keys
- (IBAction) clickEquals:(id)sender
{
    [self storeFracPart];
    [myCalculator performOperation: op];
    [displayString appendString: @" = "];
    [displayString appendString: [myCalculator.accumulator convertToString]];
    [display setText: displayString];
    
    currentNumber = 0;
    isNumerator = YES;
    firstOperand = YES;
    [displayString setString: @""];
}
- (IBAction) clickClear:(id)sender
{
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString: @""];
    [display setText: displayString];
}
-(IBAction) clickConvert: (id) sender
{
    
    /*If  firstOperand and isNumerator are YES and currentNumber is 0, then the last action was clear or equals 
     This is as much error checking I could do, without further modifiying the app*/  
    
    if(firstOperand && isNumerator && !currentNumber)  
    {  
        [displayString setString: [NSString stringWithFormat: @"%g", [myCalculator.accumulator convertToNum]]];  
        [display setText: displayString]; 
    }
}
- (void)dealloc
{
    [myCalculator release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
