//
//  VoiceEffectInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VOICEEFFECTINPUT
#define APIMATIC_VOICEEFFECTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "AudioDirectionEnum.h"
#import "AudioDirectionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol VoiceEffectInput
@end

@interface VoiceEffectInput : NSObject

/**
* The unique identifier for the in-progress voice call.
*/
@property NSString* callSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream.
*/
@property enum AudioDirectionEnum audioDirection;

/**
* value between -14 and 14
*/
@property NSNumber* pitchSemiTones;

/**
* value between -1 and 1
*/
@property NSNumber* pitchOctaves;

/**
* value greater than 0
*/
@property NSNumber* pitch;

/**
* value greater than 0
*/
@property NSNumber* rate;

/**
* value greater than 0
*/
@property NSNumber* tempo;

@end
#endif