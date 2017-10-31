//
//  PlayConferenceAudioInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_PLAYCONFERENCEAUDIOINPUT
#define APIMATIC_PLAYCONFERENCEAUDIOINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "AudioFormatEnum.h"
#import "AudioFormatEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol PlayConferenceAudioInput
@end

@interface PlayConferenceAudioInput : NSObject

/**
* The unique identifier for a conference object.
*/
@property NSString* conferenceSid;

/**
* The unique identifier for a participant object.
*/
@property NSString* participantSid;

/**
* The URL for the audio file that is to be played during the conference. Multiple audio files can be chained by using a semicolon.
*/
@property enum AudioFormatEnum audioUrl;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif