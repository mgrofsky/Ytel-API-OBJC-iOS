//
//  ViewTranscriptionInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWTRANSCRIPTIONINPUT
#define APIMATIC_VIEWTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewTranscriptionInput
@end

@interface ViewTranscriptionInput : NSObject

/**
* The unique identifier for a transcription object.
*/
@property NSString* transcriptionsid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif