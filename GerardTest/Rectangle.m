/////////////////// Bucky.m ///////////////////////////////

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Rectangle *r = [[Rectangle alloc]init];
	[r setWH:6 :8];
	NSLog(@"Rectangle is %i by %i", r.width,r.height);
	NSLog(@"Area = %i, Perimeter = %i", [r area],[r perimeter]);
	[r release];
	
	[pool drain];
	return 0;
}