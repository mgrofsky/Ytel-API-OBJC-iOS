//
//  ListInboundSharedShortcodesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListInboundSharedShortcodesInput.h"

@implementation ListInboundSharedShortcodesInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* Number of individual resources listed in the response per page
*/
@synthesize pagesize;

/**
* From Number to Inbound ShortCode
*/
@synthesize from;

/**
* Only list messages sent to this Short Code
*/
@synthesize shortcode;

/**
* Only list messages sent with the specified date
*/
@synthesize datecreated;

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