//
//  PersistenceViewController.m
//  Persistence
//
//  Created by Gerardo Delgado  on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PersistenceViewController.h"
#import "FourLines.h"

@implementation PersistenceViewController

@synthesize field1;
@synthesize field2;
@synthesize field3;
@synthesize field4;


-(NSString *)dataFilePath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:kFileName];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == field1) {
    [field2 becomeFirstResponder];
    }
    else if (textField == field2) {
        [field3 becomeFirstResponder];
    }
    
    else if (textField == field3) {
        [field4 becomeFirstResponder];
                        
    }
    
    else if (textField == field4) {
        [field4 resignFirstResponder];
    }


    
    return YES;
}


- (void)dealloc
{
    [field1 release];
    [field2 release];
    [field3 release];
    [field4 release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    NSString *filePath = [self dataFilePath];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        NSArray *array = [[NSArray alloc] initWithContentsOfFile:filePath];
        field1.text = [array objectAtIndex:0];
        field2.text = [array objectAtIndex:1];
        field3.text = [array objectAtIndex:2];
        field4.text = [array objectAtIndex:3];
        [array release];
        
        NSData *data = [[NSMutableData alloc]
                        initWithContentsOfFile:[self dataFilePath]];
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc]
                                         initForReadingWithData:data];
        
        FourLines *fourlines = [unarchiver decodeObjectForKey:kDataKey];
        [unarchiver finishDecoding];
        
        field1.text = fourlines.field1;
        field2.text = fourlines.field2;
        field3.text = fourlines.field3;
        field4.text = fourlines.field4;
        
        [unarchiver release];
        [data release];

    }
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter] addObserver:self
    selector:@selector(applicationWillResignActive:) 
    name:UIApplicationWillResignActiveNotification object:app];
    [super viewDidLoad];
}

-(void)applicationWillResignActive:(NSNotification *)notification {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:field1.text];
    [array addObject:field2.text];
    [array addObject:field3.text];
    [array addObject:field4.text];
    [array writeToFile:[self dataFilePath] atomically:YES];
    [array release];
    
    FourLines *fourlines = [[FourLines alloc] init];
    fourlines.field1 = field1.text;
    fourlines.field2 = field2.text;
    fourlines.field3 = field3.text;
    fourlines.field4 = field4.text;
    
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc]
                                 initForWritingWithMutableData:data];
    [archiver encodeObject:fourlines forKey:kDataKey];
    [archiver finishEncoding];
    [data writeToFile:[self dataFilePath] atomically:YES];
    [fourlines release];
    [archiver release];
    [data release];
}


- (void)viewDidUnload
{
    self.field1 = nil;
    self.field2 = nil;
    self.field3 = nil;
    self.field4 = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
