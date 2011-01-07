//////////////////////////// Rectangle.h //////////////////////////////////////////
#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle : NSObject {
	int width;
	int height;
	XYPoint *orgin;
}
@property int width, height; //define properties
-(XYPoint *) orgin;
-(void) setOrgin: (XYPoint *) pt;
-(int) area;
-(int) perimeter;
-(void) setWH:(int) w:(int) h;
@end

