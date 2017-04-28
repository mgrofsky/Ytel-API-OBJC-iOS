//
//  CreateListCallsInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListCallsInput.h"

@implementation CreateListCallsInput

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
@synthesize pageSize;

/**
* Only list calls to this number
*/
@synthesize to;

/**
* Only list calls from this number
*/
@synthesize from;

/**
* Only list calls starting within the specified date range
*/
@synthesize dateCreated;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.pageSize = 10;
    }
    return self;
}

@end