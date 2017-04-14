//
//  CreateListAddressInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListAddressInput.h"

@implementation CreateListAddressInput

/**
* Return requested # of items starting the value, default=0, must be an integer
*/
@synthesize page;

/**
* How many results to return, default is 10, max is 100, must be an integer
*/
@synthesize pageSize;

/**
* addresses Sid
*/
@synthesize addressSID;

/**
* date created address.
*/
@synthesize dateCreated;

/**
* Response Type either json or xml
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.page = 1;
        self.pageSize = 10;
        self.responseType = @"json";
    }
    return self;
}

@end