#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
	Rectangle *myRect = [[Rectangle alloc]init];
	
	[myRect setWidth:5 andHeight:8];
	NSLog(@"Area = %i,Perimeter = %i",myRect.area,myRect.perimeter);
	[myRect release];

    [pool drain];
    return 0;
}
