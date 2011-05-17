//
//  QuartzFunView.h
//  QuartzFun
//
//  Created by Gerardo Delgado  on 5/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"


@interface QuartzFunView : UIView {
    CGPoint firstTouch;
    CGPoint lastTouch;
    UIColor *currentColor;
    ShapeType shapeType;
    UIImage *drawImage;
    BOOL useRandomColor;
    CGRect redrawRect;
    
}

@property (nonatomic) CGPoint firstTouch;
@property (nonatomic) CGPoint lastTouch;
@property (nonatomic, retain) UIColor *currentColor;
@property (nonatomic) ShapeType shapeType;
@property (nonatomic, retain) UIImage *drawImage;
@property (nonatomic) BOOL useRandomColor;
@property (readonly) CGRect currentRect;
@property CGRect redrawRect;
@end
