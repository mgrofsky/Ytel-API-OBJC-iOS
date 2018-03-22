//
//  DeleteInvalidInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteInvalidInput.h"

@implementation DeleteInvalidInput

/**
* A valid email address that is to be remove from the invalid email list.
*/
@synthesize email;

/**
* Response Type either json or xml
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end