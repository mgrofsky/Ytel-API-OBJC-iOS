//
//  ViewAddressInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewAddressInput.h"

@implementation ViewAddressInput

/**
* The identifier of the address to be retrieved.
*/
@synthesize addressid;

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