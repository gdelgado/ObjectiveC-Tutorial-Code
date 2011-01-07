#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	int hannah = 27;
	int tim = 37;
	if( hannah > tim)
		NSLog(@"gametime");
	else {
		NSLog(@"no way old man");
	}

	
	
	
	
    [pool drain];
    return 0;
}
