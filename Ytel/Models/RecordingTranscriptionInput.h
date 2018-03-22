//
//  RecordingTranscriptionInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_RECORDINGTRANSCRIPTIONINPUT
#define APIMATIC_RECORDINGTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol RecordingTranscriptionInput
@end

@interface RecordingTranscriptionInput : NSObject

/**
* The unique identifier for a recording object.
*/
@property NSString* recordingSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif