

#import <Foundation/Foundation.h>
#import "AddressCardClass.h"


@interface AddressBook : NSObject {
    
    NSString *bookName;
    NSMutableArray *book;
    
}

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCardClass *) theCard;
-(int) entries;
-(void) list;
-(AddressCardClass *) lookup: (NSString *) theName;
-(void) dealloc;

@end
