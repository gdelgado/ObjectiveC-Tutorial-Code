//
//  Person.h
//  GerardTest
//
//  Created by Gerardo Delgado on 12/28/10.
//  Copyright 2010 Arch Insurance Group. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
	int age;
	int weight;
	
}

@property int age,weight;
-(void) print;
-(void) dateAge: (int) a : (int) i;




@end
