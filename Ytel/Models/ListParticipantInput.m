//
//  ListParticipantInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListParticipantInput.h"

@implementation ListParticipantInput

/**
* The unique identifier for a conference.
*/
@synthesize conferenceSid;

/**
* Response format, xml or json
*/
@synthesize responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pagesize;

/**
* Specifies if participant should be muted.
*/
@synthesize muted;

/**
* Specifies if the participant should hear audio in the conference.
*/
@synthesize deaf;

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