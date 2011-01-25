#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int n,j;
	
	n = 1;

	
	NSLog(@"Below are the first 10 factorials");
	
	for (j = 1; j <= 10; j++){
		n = n * j;
		NSLog(@"%2i    %i",j,n);
		
	}
  
 
    [pool drain];
    return 0;
}
