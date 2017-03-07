//
//  CreateVerifyNumberInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateVerifyNumberInput.h"

@implementation CreateVerifyNumberInput

/**
* TODO: Write general description for this method
*/
@synthesize phonenumber;

/**
* TODO: Write general description for this method
*/
@synthesize type;

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