//
//  CreateRecordingTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATERECORDINGTRANSCRIPTIONINPUT
#define APIMATIC_CREATERECORDINGTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateRecordingTranscriptionInput
@end

@interface CreateRecordingTranscriptionInput : NSObject

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