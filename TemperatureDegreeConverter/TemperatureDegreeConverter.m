#import <Foundation/Foundation.h>


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	float f,result;
	
	f = 27;
	result = (f - 32)/ 1.8;
	
	NSLog(@"The result of 27 degrees convertion is %f",result);
	

  
    [pool drain];
    return 0;
}
