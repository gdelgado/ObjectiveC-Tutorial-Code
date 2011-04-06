//
//  President.h
//  Nav
//
//  Created by Gerardo Delgado  on 4/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kPresidentNumberKey @"President"
#define kPresidentNameKey @"Name"
#define kPresidentFromkey @"FromYear"
#define kPresidentToKey @"ToYear"
#define kPresidentPartyKey @"Party"


@interface President : NSObject <NSCoding> {
    int number;
    NSString *name;
    NSString *fromYear;
    NSString *toYear;
    NSString *party;
    
}
@property int number;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *fromYear;
@property (nonatomic,copy) NSString *toYear;
@property (nonatomic,copy) NSString *party;

@end
