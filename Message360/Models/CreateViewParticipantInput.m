//
//  CreateViewParticipantInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateViewParticipantInput.h"

@implementation CreateViewParticipantInput

/**
* unique conference sid
*/
@synthesize conferenceSid;

/**
* TODO: Write general description for this method
*/
@synthesize participantSid;

/**
* Response type format xml or json
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