@interface Calculator : NSObject {
	
	double accumulator;
	double memory;

}

// accummulator methods
-(void) setAccumulator : (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value; 

// Memory Capabilities

-(double) memoryclear;
-(double) memorystore;
-(double) memoryRecall;
-(double) memoryAdd;
-(double) memorySubtract;

@end

