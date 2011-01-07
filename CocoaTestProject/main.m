/* Comments:
 ** Example written by Pascal Bourguignon
 ** return status change by Chris B. Vetter
 ** Added comments in empty {} section by Chris B. Vetter
 ** int main() changed to int main(void) by Dennis Leeuw
 **            from comments by Chris B. Vetter
 */

#include <objc/Object.h>

@interface Greeter:Object
{
	/* This is left empty on purpose:
	 ** Normally instance variables would be declared here,
	 ** but these are not used in our example.
	 */
}

- (void)greet;

@end

#include <stdio.h>

@implementation Greeter

- (void)greet
{
	printf("Hello, World!\n");
}

@end

#include <stdlib.h>

int main(void)
{
	id myGreeter;
	myGreeter=[Greeter new];
	
	[myGreeter greet];
	
	[myGreeter free];
	return EXIT_SUCCESS;
}
