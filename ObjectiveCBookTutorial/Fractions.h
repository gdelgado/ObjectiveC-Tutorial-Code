// Programs to work with fractions - class version

#import <Foundation/Foundation.h>

//--- Interface section ----


@interface Fraction : NSObject {
	int numerator;
	int denominator;
	
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

//---@Implementation section --

@implementation Fraction
-(void) print{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setNumerator: (int) n {
	numerator = n;
}
-(void) setDenominator: (int) d {
	denominator = d;
}


@end



