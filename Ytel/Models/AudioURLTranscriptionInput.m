//
//  AudioURLTranscriptionInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "AudioURLTranscriptionInput.h"

@implementation AudioURLTranscriptionInput

/**
* URL pointing to the location of the audio file that is to be transcribed.
*/
@synthesize audiourl;

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