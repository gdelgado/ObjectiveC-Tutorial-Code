//
//  Rectangle.m
//  RectangleClass
//
//  Created by Gerardo Delgado on 2/4/11.
//  Copyright 2011 Arch Insurance Group. All rights reserved.
//


#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle

@synthesize width,height;

-(void) setWidth:(int) w andHeight:(int) h{
      width = w;
      height = h;
      
}
-(int) area{
    return width * height;

}
-(int) perimeter{
    return (width + height) * 2;

}
-(XYPoint *) origin{
    return origin;

}
-(void) setOrigin: (XYPoint *) pt{
    origin = pt;

}

@end



