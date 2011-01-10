#import <Foundation/Foundation.h>
#import "Numb.h"
#import "Charz.h"


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Numb *n = [[Numb alloc]init];
	Numb *c = [[Charz alloc]init];
	
	[n setNumber:8:10];
	[n add];
	[n print];
	
	[c setCharz];
	[c add];
	[c print];
	
	[n release];
	[c release];
	
	
  
	
    [pool drain];
    return 0;
}
