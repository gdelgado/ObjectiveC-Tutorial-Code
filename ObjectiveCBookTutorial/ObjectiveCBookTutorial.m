#import <Foundation/Foundation.h>
#import "Calculator.h"


int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
	Calculator *deskCalc = [[Calculator alloc] init];  
	
    [deskCalc clear];  
    [deskCalc setAccumulator: 55];  
	
	
    NSLog(@"The accumulator is set to %g", [deskCalc accumulator]); // set to 55  
    NSLog(@"Lets store the memory %g", [deskCalc memorystore]);     // stored as 55  
    NSLog(@"Lets add the accumulator to the memory %g", [deskCalc memoryAdd]);  // accumulator + stored memory = 110  
    NSLog(@"The accumulator is set to %g", [deskCalc accumulator]); // set to 55  
    NSLog(@"OK now lets subtract the accumulator from memory %g", [deskCalc memorySubtract]); //accum is 55, memory is 110 = 55  
    NSLog(@"What is our memory? %g", [deskCalc memoryRecall]); // memory recall 55  
    NSLog(@"We are done lets clear our memory %g", [deskCalc memoryclear]); // clear = 0  
	
	
    [deskCalc release];  
    [pool drain];
    return 0;
}
