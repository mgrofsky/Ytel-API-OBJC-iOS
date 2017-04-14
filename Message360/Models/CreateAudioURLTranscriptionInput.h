//
//  CreateAudioURLTranscriptionInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEAUDIOURLTRANSCRIPTIONINPUT
#define APIMATIC_CREATEAUDIOURLTRANSCRIPTIONINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateAudioURLTranscriptionInput
@end

@interface CreateAudioURLTranscriptionInput : NSObject

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