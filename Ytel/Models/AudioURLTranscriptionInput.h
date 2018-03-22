//
//  AudioURLTranscriptionInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* URL pointing to the location of the audio file that is to be transcribed.
*/
@property NSString* audiourl;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif