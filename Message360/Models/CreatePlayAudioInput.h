//
//  CreatePlayAudioInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEPLAYAUDIOINPUT
#define APIMATIC_CREATEPLAYAUDIOINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Direction.h"
#import "DirectionHelper.h"


//protocol defined for deserialization of JSON
@protocol CreatePlayAudioInput
@end

@interface CreatePlayAudioInput : NSObject

/**
* The unique identifier of each call resource
*/
@property NSString* callSid;

/**
* URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav
*/
@property NSString* audioUrl;

/**
* Time limit in seconds for audio play back
*/
@property NSNumber* length;

/**
* The leg of the call audio will be played to
*/
@property enum Direction direction;

/**
* Repeat audio playback indefinitely
*/
@property NSNumber* loop;

/**
* If false, all other audio will be muted
*/
@property NSNumber* mix;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif