#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	int n, number, triangularNumber, counter,times;
	NSLog(@"How many triangular do you want to calculate?");
	scanf ("%i", &times);
	
	counter =1; 
	
	while (counter <=times) { 
		
		
	    NSLog(@"What triangular number do you want?");
		scanf ("%i", &number);
		++counter;
		
		triangularNumber = 0;
		
		for (n = 1;n <= number; ++n)
			triangularNumber +=n;
		
		NSLog(@"Triangular number %i is %i",number,triangularNumber);
		
	}
	
	
   
    [pool drain];
    return 0;
}
