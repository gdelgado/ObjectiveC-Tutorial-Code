/////////////////// Bucky.m ///////////////////////////////

#import <Foundation/Foundation.h>
#import "Son.h"

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Son *s = [[Son alloc]init];
	[s setNum1];
	[s PrintNumber];
	[s release];
	

	
	
	
	
	[pool drain];
	return 0;
}
