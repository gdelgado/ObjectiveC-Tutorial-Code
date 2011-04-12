//
//  LanguageListController.h
//  Presidents
//
//  Created by Gerardo Delgado  on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface LanguageListController : UITableViewController {
    DetailViewController *detailViewController;
    NSArray *languageNames;
    NSArray *languageCodes;
    
}

@property (nonatomic,assign) DetailViewController *detailViewController;
@property (nonatomic,retain) NSArray *languageNames;
@property (nonatomic,retain) NSArray *languageCodes;

@end
