//Basic File Operations
//Assumes the existence of a file called "testfile"
//In the current working directory

// #import <Foundation/Foundation.h>
#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSDictionary.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSString *fName = @"testfile";
    NSFileManager *fm;
    NSDictionary *attr;
    
// Need to create an instance of the file manager
    
    fm = [NSFileManager defaultManager];
    
// Lets make sure our test file exist first
    
    if ([fm fileExistsAtPath: fName] == NO) {
        NSLog(@"Files doesn't exist!");
       return 1;
    }
    
// Now let's make a copy
    
    if ([fm copyPath: fName toPath: @"newfile" handler: nil] == NO){
        NSLog(@"Files copy failed!");
        return 2;
    }
// Lets test to see if the two files are identical
    
    if ([fm contentsEqualAtPath: fName andPath: @"newfile"] == NO){
        NSLog(@"Files are not equal!");
        return 3;
    }
    
// Now lets rename the file
    
    if ([fm movePath:@"newfile" toPath:@"newfile2" handler:nil] == NO){
        NSLog(@"Files cannot be renamed!");
        return 4;
    }
    
// Get the size of newfile2
    
    if ((attr = [fm fileAttributesAtPath:@"newfile2" traverseLink:NO]) == nil){
        NSLog(@"Couldnt get file attributes!");
        return 5;
    }
    NSLog(@"File size is %i bytes", [[attr objectForKey:NSFileSize] intValue]);
    
// And finally, lets delete the original file
    
    if ([fm removeFileAtPath:fName handler:nil] == NO){
        NSLog(@"File removal failed!");
        return 6;
    }
    
    NSLog(@"All operations were succesful!");
    
// Display the contents of the newly-created file
    
NSLog(@"%@", [NSString stringWithContentsOfFile: @"newfile2" encoding: NSUTF8StringEncoding error: nil] );
    
    
    

    [pool drain];
    return 0;
}

