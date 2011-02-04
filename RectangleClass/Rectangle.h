
#import <Foundation/Foundation.h>


@interface Rectangle : NSObject {
	
	int width;
	int height;

}

@property int width,height;

-(void) setWidth:(int) w andHeight:(int) h;
-(int) area;
-(int) perimeter;

@end
