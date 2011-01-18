
#import <Foundation/Foundation.h>


@interface Car : NSObject {
	int serialnumber;
	int speedometer;
	int year;
	int mileage;
	                                                                  
}
-(void) print;
-(void) setSerialNumber: (int) s;
-(void) setSpeedometer: (int) e;
-(void) setYear: (int) y;
-(void) setMileage: (int) m;
@end

//---@Implementation section --

@implementation Car
-(void) print{
    NSLog(@"This car has these specifics %i,%i,%i,%i ",serialnumber,speedometer,year,mileage);
}
-(void) setSerialNumber: (int) s {
	serialnumber = s;
}
-(void) setSpeedometer: (int) e {
	speedometer = e;
}
-(void) setYear: (int) y {
	year = y;
}
-(void) setMileage: (int) m {
	mileage= m;
}

@end


