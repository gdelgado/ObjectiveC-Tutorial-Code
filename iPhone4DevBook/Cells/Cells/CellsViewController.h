//
//  CellsViewController.h
//  Cells
//
//  Created by Gerardo Delgado  on 3/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNameValueTag 1
#define kColorValueTag 2


@interface CellsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    NSArray *computers;
    UITableViewCell *tvCell;
}

@property (nonatomic, retain) NSArray *computers;
@property (nonatomic, retain) IBOutlet UITableViewCell *tvCell;

@end
