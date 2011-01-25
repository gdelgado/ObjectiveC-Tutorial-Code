#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

-(void) setAccumulator : (double) value{
	accumulator = value;
}
-(void) clear{
	accumulator = 0;
}
-(double) accumulator{
	return accumulator;
}
-(void) add: (double) value{
	accumulator += value;
}
-(void) subtract: (double) value{
    accumulator -= value; 
}
-(void) multiply: (double) value{
    accumulator *= value;
}
-(void) divide: (double) value{
	accumulator /= value;
} 
-(double) memoryclear{
	memory = 0;
	return memory; 
}
-(double) memorystore{
	return memory = accumulator;
}
-(double) memoryRecall{
    return accumulator = memory;
}
-(double) memoryAdd{
	return memory = (memory + accumulator);
   
}
-(double) memorySubtract{
   return memory = (memory - accumulator);
}

@end

