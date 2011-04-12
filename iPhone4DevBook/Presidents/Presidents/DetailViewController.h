//
//  DetailViewController.h
//  Presidents
//
//  Created by Gerardo Delgado  on 4/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate> {
    UIWebView *webView;
    id detailItem;
    UIBarButtonItem *languageButton;
    UIPopoverController *languagePopoverController;
    NSString *languageString;

}


@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@property (nonatomic, retain) id detailItem;

@property (nonatomic, retain) IBOutlet UILabel *detailDescriptionLabel;

@property (nonatomic, retain) IBOutlet UIWebView *webView;

@property (nonatomic, retain) IBOutlet UIBarButtonItem *languageButton;

@property (nonatomic, retain) UIPopoverController *languagePopoverController;

@property (nonatomic, copy) NSString *languageString;

-(IBAction)touchLanguageButton;

@end
