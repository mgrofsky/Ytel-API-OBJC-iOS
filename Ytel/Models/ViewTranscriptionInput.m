//
//  ViewTranscriptionInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewTranscriptionInput.h"

@implementation ViewTranscriptionInput

/**
* The unique identifier for a transcription object.
*/
@synthesize transcriptionsid;

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