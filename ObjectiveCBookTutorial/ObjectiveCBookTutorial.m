#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Calculator.m"

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Calculator *deskCalc = [[Calculator alloc] init];
   
    
    [deskCalc clear];
    [deskCalc setAccumulator: 100.0];
    [deskCalc add: 200.0];
    [deskCalc divide: 15.0];
    [deskCalc subtract: 10.0];
    [deskCalc multiply: 5];
    NSLog(@"The result is %g", [deskCalc accumulator]);
    [deskCalc release];
	
    [pool drain];
    return 0;
}
