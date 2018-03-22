//
//  ListInboundShortcodeInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListInboundShortcodeInput.h"

@implementation ListInboundShortcodeInput

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
* Only list SMS messages sent from this number
*/
@synthesize from;

/**
* Only list SMS messages sent to Shortcode
*/
@synthesize shortcode;

/**
* Only list SMS messages sent in the specified date MAKE REQUEST
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