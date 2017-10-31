//
//  CarrierLookupListInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CarrierLookupListInput.h"

@implementation CarrierLookupListInput

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
        self.page = 1;
        self.pagesize = 10;
    }
    return self;
}

@end