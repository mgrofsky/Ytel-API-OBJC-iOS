//
//  VerifyAddressInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "VerifyAddressInput.h"

@implementation VerifyAddressInput

/**
* The identifier of the address to be verified.
*/
@synthesize addressid;

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