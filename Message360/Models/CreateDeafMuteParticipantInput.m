//
//  CreateDeafMuteParticipantInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateDeafMuteParticipantInput.h"

@implementation CreateDeafMuteParticipantInput

/**
* TODO: Write general description for this method
*/
@synthesize conferenceSid;

/**
* TODO: Write general description for this method
*/
@synthesize participantSid;

/**
* TODO: Write general description for this method
*/
@synthesize muted;

/**
* TODO: Write general description for this method
*/
@synthesize deaf;

/**
* Response Type either json or xml
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