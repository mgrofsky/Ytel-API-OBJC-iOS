//
//  CreateCarrierLookupListInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateCarrierLookupListInput.h"

@implementation CreateCarrierLookupListInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Page Number
*/
@synthesize page;

/**
* Page Size
*/
@synthesize pagesize;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end