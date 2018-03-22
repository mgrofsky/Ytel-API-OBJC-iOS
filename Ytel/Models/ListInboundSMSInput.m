//
//  ListInboundSMSInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListInboundSMSInput.h"

@implementation ListInboundSMSInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pageSize;

/**
* Filter SMS message objects from this valid 10-digit phone number (E.164 format).
*/
@synthesize from;

/**
* Filter SMS message objects to this valid 10-digit phone number (E.164 format).
*/
@synthesize to;

/**
* Filter sms message objects by this date.
*/
@synthesize dateSent;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.page = 1;
        self.pageSize = 10;
    }
    return self;
}

@end