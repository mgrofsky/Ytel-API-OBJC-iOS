//
//  RecordingTranscriptionInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "RecordingTranscriptionInput.h"

@implementation RecordingTranscriptionInput

/**
* The unique identifier for a recording object.
*/
@synthesize recordingSid;

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