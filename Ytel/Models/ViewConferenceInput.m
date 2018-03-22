//
//  ViewConferenceInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewConferenceInput.h"

@implementation ViewConferenceInput

/**
* The unique identifier of each conference resource
*/
@synthesize conferenceSid;

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