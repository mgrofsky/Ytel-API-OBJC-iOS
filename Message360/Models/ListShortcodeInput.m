//
//  ListShortcodeInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListShortcodeInput.h"

@implementation ListShortcodeInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Only list messages sent from this Short Code
*/
@synthesize shortcode;

/**
* Only list messages sent to this number
*/
@synthesize to;

/**
* Only list messages sent with the specified date
*/
@synthesize dateSent;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pageSize;

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