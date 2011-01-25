#import <Foundation/Foundation.h>

@interface Rectangle: NSObject{

	int height;
	int width;
}
-(void) SetWidth: (int) w;
-(void) SetHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

@implementation Rectangle

-(void) SetWidth: (int) w{

	width = w;
}
-(void) SetHeight: (int) h{
    
	height = h;

}
-(int) width{
	return width;
}
-(int) height{

	return height;
}
-(int) area{
    
	return (width*height);
}
-(int) perimeter{

	return (2*width + 2*height);
 }

@end




int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	int counter, n, n2;  
    NSLog(@" n  -----   n2");  
	
    n = 0;  
    n2 = 0;  
	
    for (counter = 1; counter <=10; ++counter){  
        ++n;  
        n2 = counter * counter;  
        NSLog(@"%2i          %i", n, n2);  
    } 
	
    [pool drain];
    return 0;
}
	

	

