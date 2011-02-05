//
//  XYPoint.h
//  RectangleClass
//
//  Created by Gerardo Delgado  on 2/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XYPoint : NSObject {
    
    int x;
    int y;
}

@property int x,y;

-(void) setX: (int) xVal andY: (int) yVal;
@end
