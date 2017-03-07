//
//  CreateListParticipantInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListParticipantInput.h"

@implementation CreateListParticipantInput

/**
* unique conference sid
*/
@synthesize conferenceSid;

/**
* page number
*/
@synthesize page;

/**
* TODO: Write general description for this method
*/
@synthesize pagesize;

/**
* TODO: Write general description for this method
*/
@synthesize muted;

/**
* TODO: Write general description for this method
*/
@synthesize deaf;

/**
* Response format, xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end