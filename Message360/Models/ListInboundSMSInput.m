//
//  ListInboundSMSInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListInboundSMSInput.h"

@implementation ListInboundSMSInput

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
* From Number to Inbound SMS
*/
@synthesize from;

/**
* To Number to get Inbound SMS
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
        self.pagesize = 10;
    }
    return self;
}

@end