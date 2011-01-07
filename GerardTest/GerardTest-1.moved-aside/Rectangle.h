////////////////////////////  Rectangle.h  //////////////////////////////////////////

@interface Rectangle : NSObject {
	int width;
	int height;
}
@property int width, height; //define properties
-(int) area;
-(int) perimeter;
-(void) setWH:(int) w:(int) h;
@end

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
@end

