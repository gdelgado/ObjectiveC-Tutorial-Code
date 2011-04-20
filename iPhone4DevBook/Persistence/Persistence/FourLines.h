//
//  FourLines.h
//  Persistence
//
//  Created by Gerardo Delgado  on 4/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FourLines : NSObject <NSCoding, NSCopying> {
    NSString *field1;
    NSString *field2;
    NSString *field3;
    NSString *field4;
    
}

@property (nonatomic,retain) NSString *field1;
@property (nonatomic,retain) NSString *field2;
@property (nonatomic,retain) NSString *field3;
@property (nonatomic,retain) NSString *field4;

@end
