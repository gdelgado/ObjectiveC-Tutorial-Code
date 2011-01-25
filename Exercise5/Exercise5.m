#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int n,triangular;
	
	
	NSLog(@"Triangle number in multiples of 5");

	
	for (n = 0; n <= 50; n += 5){
		triangular = n * (n +1) / 2;
		NSLog(@"Triangular Number %2i     %i",n,triangular);
		
	
	}
	
    [pool drain];
    return 0;
}
