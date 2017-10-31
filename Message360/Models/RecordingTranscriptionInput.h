//
//  RecordingTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Unique Recording sid
*/
@property NSString* recordingSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif