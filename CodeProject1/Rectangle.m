
////////////////// Rectangle.m ////////////////////////////////////////

#import "Rectangle.h"

@implementation Rectangle
@synthesize width, height; //setter and getters
-(void) setWH:(int) w:(int) h{
	width = w;
	height = h;
}
-(int) area{
	return width*height;
}
-(int) perimeter{
	return (width+height)*2;
}
-(XYPoint *)orgin {
	return orgin;
}
-(void)setOrgin: (XYPoint *) pt{
	orgin=pt;
}


@end