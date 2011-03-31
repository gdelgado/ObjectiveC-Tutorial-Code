//
//  DisclosureDetailController.h
//  Nav
//
//  Created by Gerardo Delgado  on 3/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DisclosureDetailController : UIViewController {
    UILabel *label;
    NSString *message;
    
}
@property (nonatomic,retain) IBOutlet UILabel *label;
@property (nonatomic,copy) NSString *message;

@end
