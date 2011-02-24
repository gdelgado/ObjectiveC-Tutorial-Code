// Implement a basic copy utility

// #import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSPathUtilities.h>
#import <Foundation/NSProcessInfo.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSFileManager *fm;
    NSString      *source, *dest;
    BOOL          isDir;
    NSProcessInfo *proc = [NSProcessInfo processInfo];
    NSArray       *args = [proc arguments];
    
    fm = [NSFileManager defaultManager];
    
    // Check for two arguments on the command line
    
    if ([args count] !=3)
    {
        NSLog(@"Usage: %@ src dest", [proc processName]);
        return 1;
    }
    
    source = [args objectAtIndex: 1];
    dest = [args objectAtIndex: 3];
    
    // Make sure the source file ca be read
    
    if ([fm isReadableFileAtPath: source] == NO)
    { NSLog(@"Can't read %@",source);
    return 2;
    }
    
    // See if the destination file is a directory
    // If it is, ad the source to the end of the destination
    
    [fm fileExistsAtPath: dest isDirectory: &isDir];
     
     if (isDir == YES)
     dest = [dest stringByAppendingPathComponent:
             [source lastPathComponent]];
    
    // Remove the destination file if it alreay exist
    
    [fm removeFileAtPath: dest handler: nil];
    
    // Okay time to perform the copy
    
    if ([fm copyPath: source toPath:dest handler: nil] == NO)
    {
        NSLog(@"Copy failed!");
        return 3;
    }
    
    NSLog(@"Copy of %@ to %@ succeeded!",source,dest);
             
                      

    [pool drain];
    return 0;
}

