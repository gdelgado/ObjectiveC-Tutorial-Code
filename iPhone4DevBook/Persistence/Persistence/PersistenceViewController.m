//
//  PersistenceViewController.m
//  Persistence
//
//  Created by Gerardo Delgado  on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PersistenceViewController.h"
#import "FourLines.h"
#import <sqlite3.h>

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
    
    sqlite3 *database;
    if (sqlite3_open([[self dataFilePath] UTF8String],&database) != SQLITE_OK) {
        sqlite3_close(database);
        NSAssert(0, @"Failed to open database");
    }
    
    char *errorMsg;
     //Note that the contination char on next line is not part of the string...
    NSString *createSQL = @"CREATE TABLE IF NOT EXISTS FIELDS (ROW INTEGER PRIMARY KEY, FIELD _DATA TEXT);";
    if (sqlite3_exec(database, [createSQL UTF8String], NULL, NULL, &errorMsg) != SQLITE_OK) {
        sqlite3_close(database);
        NSAssert(0, @"Error creating table: %s", errorMsg);
    }
    
    NSString *query = @"SELECT ROW, FIELD_DATA FROM FIELDS ORDER BY ROW";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int row = sqlite3_column_int(statement, 0);
            char *rowData = (char *)sqlite3_column_text(statement, 1);
            
            NSString *fieldName = [[NSString alloc]
            initWithFormat:@"field%d", row];
            
            NSString *fieldValue = [[NSString alloc]
            initWithUTF8String:rowData];
            
            UITextField *field = [self valueForKey:fieldName];
            field.text = fieldValue;
            [fieldName release];
            [fieldValue release];
                                   
        }
        sqlite3_finalize(statement);
    }
    sqlite3_close(database);
    
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
    
    sqlite3 *database;
    if (sqlite3_open([[self dataFilePath] UTF8String], &database) != SQLITE_OK) {
        sqlite3_close(database);
        NSAssert (0, @"Failed to open database");
    }
    for (int i = 1; i <= 4; i++) {
        NSString *fieldName = [[NSString alloc]
        initWithFormat:@"field%d", i];
        
        UITextField *field = [self valueForKey:fieldName];
        [fieldName release];
        
        char *errorMsg;
        // Note that the continuation char on next line is not part of string...
        char *update = "INSERT OR REPLACE INTO FIELDS (ROW,FIELD_DATA) VALUES (?, ?);";
        sqlite3_stmt *stmt;
        if (sqlite3_prepare_v2(database, update, -1, &stmt, nil) == SQLITE_OK) {
            sqlite3_bind_int(stmt, 1, i);
            sqlite3_bind_text(stmt, 2, [field.text UTF8String], -1, NULL);
        }
        if (sqlite3_step(stmt) != SQLITE_DONE)
            NSAssert1(0, @"Error updating table: %s", errorMsg);
        sqlite3_finalize(stmt);
    }
    sqlite3_close(database);
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
