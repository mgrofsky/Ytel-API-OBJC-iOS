//
//  DeafMuteParticipantInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeafMuteParticipantInput.h"

@implementation DeafMuteParticipantInput

/**
* ID of the active conference
*/
@synthesize conferenceSid;

/**
* ID of an active participant
*/
@synthesize participantSid;

/**
* Response Type either json or xml
*/
@synthesize responseType;

/**
* Mute a participant
*/
@synthesize muted;

/**
* Make it so a participant cant hear
*/
@synthesize deaf;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end