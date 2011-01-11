#import <Foundation/Foundation.h>
#import "Fractions.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *myFraction;

    // Create an instance of a Fraction
	
	myFraction = [Fraction alloc];
	myFraction = [myFraction init];
	
	//Set fraction 1/3
	
	[myFraction setNumerator: 1];
	[myFraction setDenominator: 3];
	
	//Display the fraction using the print method
	NSLog(@"The value of My Fraction is:");
	[myFraction print];
	[myFraction release];
 
    [pool drain];
    return 0;
}
