//
//  AudioURLTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_AUDIOURLTRANSCRIPTIONINPUT
#define APIMATIC_AUDIOURLTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol AudioURLTranscriptionInput
@end

@interface AudioURLTranscriptionInput : NSObject

/**
* Audio url
*/
@property NSString* audioUrl;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif