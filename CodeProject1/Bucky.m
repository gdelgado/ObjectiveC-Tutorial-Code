/////////////////// Bucky.m ///////////////////////////////

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Rectangle *r = [[Rectangle alloc]init];
	XYPoint *p = [[XYPoint alloc]init];
	
	[p setXY: 100 : 300];
	[r setWH:6 :8];
	r.orgin = p;
	
	NSLog(@"Width and height is %i and %i", r.width, r.height);
	NSLog(@"Origin is at %i,%i",r.orgin.x, r.orgin.y);
	NSLog(@"Area and Perimeter are %i and %i",[r area],[r perimeter]);
	
	[r release];
	[p release];
	
	
	
	
	[pool drain];
	return 0;
}
