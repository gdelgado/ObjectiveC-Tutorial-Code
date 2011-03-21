//
//  SectionsViewController.h
//  Sections
//
//  Created by Gerardo Delgado  on 3/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SectionsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate> {
//    NSDictionary *names;
//    NSArray *keys;
    UITableView *table;
    UISearchBar *search;
    NSDictionary *allNames;
    NSMutableDictionary *names;
    NSMutableArray *keys;
    
    BOOL isSearching;
    
}

//@property (nonatomic, retain) NSDictionary *names;
//@property (nonatomic, retain) NSArray *keys;
@property (nonatomic, retain) IBOutlet UITableView *table;
@property (nonatomic, retain) IBOutlet UISearchBar *search;
@property (nonatomic, retain) NSDictionary *allNames;
@property (nonatomic, retain) NSMutableDictionary *names;
@property (nonatomic, retain) NSMutableArray *keys;

-(void)resetSearch;
-(void)handleSearchForTerm:(NSString *)searchTerm;
           
@end
