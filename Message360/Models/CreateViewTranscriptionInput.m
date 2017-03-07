//
//  CreateViewTranscriptionInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateViewTranscriptionInput.h"

@implementation CreateViewTranscriptionInput

/**
* Unique Transcription ID
*/
@synthesize transcriptionSid;

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