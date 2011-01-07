#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Person * gerardo = [[Person alloc]init];
	
	gerardo.age=36;
	gerardo.weight=190;
	
	[gerardo print];
	[gerardo dateAge: 65:30000000];
	[gerardo release];

  
    [pool drain];
    return 0;
}
