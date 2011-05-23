//
//  SwipesViewController.h
//  Swipes
//
//  Created by Gerardo Delgado  on 5/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipesViewController : UIViewController {
    UILabel *label;
    CGPoint gestureStartPoint;
}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property CGPoint gestureStartPoint;
-(void)eraseText;

@end
