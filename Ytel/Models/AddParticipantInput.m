//
//  AddParticipantInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "AddParticipantInput.h"

@implementation AddParticipantInput

/**
* The unique identifier for a conference object.
*/
@synthesize conferenceSid;

/**
* The phone number of the participant to be added.
*/
@synthesize participantNumber;

/**
* Response type format xml or json
*/
@synthesize responseType;

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
    }
    return self;
}

@end