

#import "AddressBook.h"


@implementation AddressBook;

// setup address book name and an empty book

-(id) initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        bookName = [[NSString alloc]initWithString:name];
        book = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(void) addCard:(AddressCardClass *) theCard
{
    [book addObject:theCard];
}
-(int) entries 
{
    return [book count];
}
-(void) list
{
    NSLog(@"========Contents of: %@=============",bookName);
    
    for ( AddressCardClass *theCard in book)
        NSLog(@"%-20s         %-32s",[theCard.name UTF8String],
              [theCard.email UTF8String]);
          
}
-(void) dealloc
{
    [bookName release];
    [book release];
    [super dealloc];
}
-(AddressCardClass *) lookup: (NSString *) theName
{
    for (AddressCardClass *nextCard in book)
        if ( [[nextCard name] caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    
    return nil;
}
@end
