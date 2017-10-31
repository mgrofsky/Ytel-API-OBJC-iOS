//
//  DeleteAddressInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeleteAddressInput.h"

@implementation DeleteAddressInput

/**
* The identifier of the address to be deleted.
*/
@synthesize addressSID;

/**
* Response type either json or xml
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