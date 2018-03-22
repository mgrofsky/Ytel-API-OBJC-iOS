//
//  HangupParticipantInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "HangupParticipantInput.h"

@implementation HangupParticipantInput

/**
* The unique identifier for a conference object.
*/
@synthesize conferenceSid;

/**
* The unique identifier for a participant object.
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