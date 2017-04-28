//
//  CreateListInboundShortCodeInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListInboundShortCodeInput.h"

@implementation CreateListInboundShortCodeInput

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
@synthesize dateReceived;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.pagesize = 10;
    }
    return self;
}

@end