
#import "Numb.h"


@implementation Numb
-(void) setNumber: (int) a:(int) b{
	num1=a;
	num2=b;
	
}	
-(void) add{
    answer=num1+num2;
	
}
-(void) print{
	NSLog(@"I am from the Numb Class,%i",answer);
}

@end
