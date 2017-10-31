//
//  ListParticipantInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListParticipantInput.h"

@implementation ListParticipantInput

/**
* unique conference sid
*/
@synthesize conferenceSid;

/**
* Response format, xml or json
*/
@synthesize responseType;

/**
* page number
*/
@synthesize page;

/**
* Amount of records to return per page
*/
@synthesize pagesize;

/**
* Participants that are muted
*/
@synthesize muted;

/**
* Participants cant hear
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