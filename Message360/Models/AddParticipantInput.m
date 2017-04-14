//
//  AddParticipantInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "AddParticipantInput.h"

@implementation AddParticipantInput

/**
* Unique Conference Sid
*/
@synthesize conferencesid;

/**
* Particiant Number
*/
@synthesize participantnumber;

/**
* TODO: Write general description for this method
*/
@synthesize tocountrycode;

/**
* TODO: Write general description for this method
*/
@synthesize muted;

/**
* TODO: Write general description for this method
*/
@synthesize deaf;

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