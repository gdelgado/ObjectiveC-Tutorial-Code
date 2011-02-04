#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *aFraction = [[Fraction alloc]init];
	Fraction *bFraction = [[Fraction alloc]init];
	
	Fraction *resultFraction;
    
 	//set two fractions to 1/4 and 1/2 and add them together
	
	[aFraction setTo:1 over:4];
	[bFraction setTo:1 over:2];
	
	//Print the results
	
	[aFraction print];
	 NSLog(@"+");
	[bFraction print];
     NSLog(@"=");
	
	resultFraction = [aFraction add: bFraction];
	[resultFraction print];
	
	
	
	// This time give the result directly to print
	// memory leakage here
	
	[[aFraction add:bFraction] print];
	[aFraction release];
	[bFraction release];
	[resultFraction release];
	
    [pool drain];
    return 0;
}
