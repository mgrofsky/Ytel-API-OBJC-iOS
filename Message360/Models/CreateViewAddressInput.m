//
//  CreateViewAddressInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateViewAddressInput.h"

@implementation CreateViewAddressInput

/**
* The identifier of the address to be retrieved.
*/
@synthesize addressSID;

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