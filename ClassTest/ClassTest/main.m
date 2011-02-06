//
//  main.m
//  ClassTest
//
//  Created by Gerardo Delgado  on 2/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassC.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    ClassA *a = [[ClassA alloc]init];
    ClassB *b = [[ClassB alloc]init];
    ClassC *c = [[ClassC alloc]init];
    
    
    
    [a initVar];
    [b initVar];
    [c initVar];
    
    
    [a printVar];   
    [b printVar];
    [c printVar];
    
    [a release];
    [b release];
    [c release];
    
    [pool drain];
    return 0;
}

