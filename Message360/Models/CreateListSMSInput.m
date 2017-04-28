//
//  CreateListSMSInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListSMSInput.h"

@implementation CreateListSMSInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Which page of the overall response will be returned. Zero indexed
*/
@synthesize page;

/**
* Number of individual resources listed in the response per page
*/
@synthesize pagesize;

/**
* Messages sent from this number
*/
@synthesize from;

/**
* Messages sent to this number
*/
@synthesize to;

/**
* Only list SMS messages sent in the specified date range
*/
@synthesize datesent;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end