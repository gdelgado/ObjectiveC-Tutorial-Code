//
//  Fraction.h
//  FractionTest
//
//  Created by Gerardo Delgado  on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction Class

@interface Fraction : NSObject {
	int numerator;
	int denominator;

}

@property int numerator,denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(void) add: (Fraction *) f;
-(void) reduce;
-(double) convertToNum;

@end

