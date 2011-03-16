//
//  Simple_TableViewController.h
//  Simple Table
//
//  Created by Gerardo Delgado  on 3/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Simple_TableViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource> {
    NSArray *listData;
    
}

@property (nonatomic, retain) NSArray *listData;

@end
