#import <Foundation/Foundation.h>
#import "Car.h"


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Car *myCar;
	
    // Create an instance of a Fraction
	
	myCar= [[Car alloc]init];
	
	
	//Set fraction 1/3
	
	[myCar setSerialNumber: 12345];
	[myCar setSpeedometer: 234532];
	[myCar setYear: 1992];
	[myCar setMileage: 92];
	
	//Display the fraction using the print method
	[myCar print];
	[myCar release];
	
    [pool drain];
    return 0;
}

