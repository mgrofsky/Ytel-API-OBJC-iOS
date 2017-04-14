//
//  CreateViewTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWTRANSCRIPTIONINPUT
#define APIMATIC_CREATEVIEWTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewTranscriptionInput
@end

@interface CreateViewTranscriptionInput : NSObject

/**
* Unique Transcription ID
*/
@property NSString* transcriptionSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif