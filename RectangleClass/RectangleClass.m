#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
	Rectangle *myRect = [[Rectangle alloc]init];
    XYPoint *myXYPoint = [[XYPoint alloc]init];
    
    [myXYPoint setX: 100 andY: 200];
        
    [myRect setWidth:5 andHeight: 8];
    myRect.origin = myXYPoint;
    
    NSLog(@"Rectangle w = %i, h = %i",myRect.width,myRect.height);
    NSLog(@"Origin at (%i,%i)",myRect.origin.x,myRect.origin.y);
    
    NSLog(@"Area = %i, Perimeter = %i",myRect.area,myRect.perimeter);
    [myRect release];
    [myXYPoint release];
    

    [pool drain];
    return 0;
}
