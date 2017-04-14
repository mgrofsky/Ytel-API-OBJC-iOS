//
//  CreateCarrierLookupListInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateCarrierLookupListInput.h"

@implementation CreateCarrierLookupListInput

/**
* Page Number
*/
@synthesize page;

/**
* Page Size
*/
@synthesize pagesize;

/**
* Response type format xml or json
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