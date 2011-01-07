////////////////// Square.m ////////////////////////////////////////


#import "Square.h"


@implementation Square: Rectangle
-(void) setSide:(int) s{
	[self setWH:s:s]; //self means THIS objects method/s is same for sqaure
}
-(int) side{
	return width; //or height
}
@end
