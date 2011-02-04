//
//  Square.m
//  RectangleClass
//
//  Created by Gerardo Delgado on 2/4/11.
//  Copyright 2011 Arch Insurance Group. All rights reserved.
//

#import "Square.h"


@implementation Square: Rectangle


-(void) setSide: (int) s{
   
	[self setWidth: s andHeight: s];

}
-(int) side{
    
	return width;
	
}


@end
