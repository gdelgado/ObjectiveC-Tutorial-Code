

#import <Foundation/Foundation.h>


@interface AddressCardClass : NSObject {
    
    NSString *name;
    NSString *email;
    
}

@property (copy,nonatomic) NSString *name,*email;
-(void) print;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
@end
